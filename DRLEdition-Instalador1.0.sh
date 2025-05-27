#!/bin/bash

# Script de Instalação e Configuração: DRLEdition
# Autor: DRLEdition (com base no exemplo de DRL Edition19)
# Data: 25-05-2025
# Versão: 1.0

# --- Variáveis ---
APP_NAME="DRL Edition Installer"
APP_EXEC="DRLEditionInstaller"
DESKTOP_DIR="/userdata/system/.local/share/applications"
DESKTOP_FILE="${DESKTOP_DIR}/${APP_NAME}.desktop"
PORTS_DIR="/userdata/roms/ports"
IMAGES_DIR="${PORTS_DIR}/images"
GAMELIST_PATH="${PORTS_DIR}/gamelist.xml"
BACKUP_PATH="${PORTS_DIR}/gamelist.xml.backup_$(date +%Y%m%d%H%M%S)"
BIN_DIR="/usr/bin" # Aviso: /usr/bin está em um sistema de arquivos overlay, pode ser necessário 'batocera-save-overlay'

# URLs (ATENÇÃO: Substitua 'seu.link' pelos links reais!)
MARQUEE_URL="http://seu.link/DRLEditionInstaller-marquee.imagem" # <--- SUBSTITUA ESTE LINK
THUMB_URL="http://seu.link/DRLEditionInstaller-thumb.imagem"   # <--- SUBSTITUA ESTE LINK
SCRIPT_URL="http://seu.link/DRLEditionInstaller.arquivo.sh"   # <--- SUBSTITUA ESTE LINK

MARQUEE_IMG="${IMAGES_DIR}/${APP_EXEC}-marquee.png"
THUMB_IMG="${IMAGES_DIR}/${APP_EXEC}-thumb.png"
MAIN_SCRIPT_PATH="${BIN_DIR}/${APP_EXEC}"
PORT_SCRIPT_PATH="${PORTS_DIR}/${APP_EXEC}.sh"
PORT_SCRIPT_NAME="${APP_EXEC}.sh"

# --- Conteúdo dos Arquivos ---

DESKTOP_CONTENT="[Desktop Entry]
Version=1.0
Type=Application
Name=${APP_NAME}
Exec=${APP_EXEC}
Terminal=false
Categories=Utility;Application;batocera.linux;
Icon=${MARQUEE_IMG}
"

PORT_SCRIPT_CONTENT="#!/bin/bash
${APP_EXEC}
"

GAMELIST_ENTRY_CONTENT="	<game>
		<path>./${PORT_SCRIPT_NAME}</path>
		<name>${APP_NAME}</name>
		<desc>=========================================
Last updated: 25-05-2025
Developer: DRLEdition
DRL Edition Installer, 2025 by DRLEdition
=========================================</desc>
		<image>./images/${APP_EXEC}-thumb.png</image>
		<marquee>./images/${APP_EXEC}-marquee.png</marquee>
		<thumbnail>./images/${APP_EXEC}-thumb.png</thumbnail>
		<fanart>./images/${APP_EXEC}-thumb.png</fanart>
		<titleshot>./images/${APP_EXEC}-thumb.png</titleshot>
		<cartridge>./images/${APP_EXEC}-thumb.png</cartridge>
		<boxart>./images/${APP_EXEC}-marquee.png</boxart>
		<boxback>./images/${APP_EXEC}-thumb.png</boxback>
		<wheel>./images/${APP_EXEC}-thumb.png</wheel>
		<mix>./images/${APP_EXEC}-thumb.png</mix>
		<rating>1</rating>
		<developer>DRLEdition</developer>
		<publisher>DRLEdition</publisher>
		<players>1</players>
		<favorite>true</favorite>
		<lang>en</lang>
		<sortname>1 =- ${APP_NAME}</sortname>
		<genreid>0</genreid>
		<screenshot>./images/${APP_EXEC}-thumb.png</screenshot>
	</game>"

# --- Funções ---

# Função para exibir mensagem de erro e sair
error_exit() {
    echo "Erro: $1" >&2
    exit 1
}

# Função para fazer download de arquivos
download_file() {
    local url="$1"
    local output_path="$2"
    echo "Baixando '$url' para '$output_path'..."
    wget -q -O "$output_path" "$url"
    if [ $? -ne 0 ]; then
        error_exit "Falha ao baixar $url. Verifique o link e sua conexão."
    fi
    echo "Download concluído."
}

# Função para criar backup
create_backup() {
    if [ -f "$GAMELIST_PATH" ]; then
        cp "$GAMELIST_PATH" "$BACKUP_PATH"
        echo "Backup do gamelist.xml criado em: $BACKUP_PATH"
    fi
}

# Função para criar gamelist.xml novo
create_new_gamelist() {
    echo "Criando novo arquivo gamelist.xml..."
    cat > "$GAMELIST_PATH" << EOF
<?xml version="1.0"?>
<gameList>
${GAMELIST_ENTRY_CONTENT}
</gameList>
EOF
    echo "Arquivo gamelist.xml criado com sucesso!"
}

# Função para verificar se a entrada já existe
check_entry() {
    if [ -f "$GAMELIST_PATH" ]; then
        grep -q "<path>./${PORT_SCRIPT_NAME}</path>" "$GAMELIST_PATH"
        return $?
    else
        return 1
    fi
}

# Função para remover a entrada existente (usando awk)
remove_entry() {
    echo "Removendo entrada existente..."
    TEMP_FILE=$(mktemp)
    awk -v script_name="${PORT_SCRIPT_NAME}" '
        BEGIN { game_block = ""; in_game = 0; is_target = 0; }
        /<game>/ { in_game = 1; game_block = $0; is_target = 0; }
        in_game && ! /<game>/ { game_block = game_block "\n" $0 }
        in_game && $0 ~ "<path>./" script_name "</path>" { is_target = 1 }
        /<\/game>/ {
            if (!is_target) { print game_block }
            in_game = 0; game_block = "";
            next
        }
        !in_game { print }
    ' "$GAMELIST_PATH" > "$TEMP_FILE"
    mv "$TEMP_FILE" "$GAMELIST_PATH"
    echo "Entrada existente removida."
}

# Função para adicionar a entrada (usando awk)
add_entry() {
    echo "Adicionando nova entrada..."
    TEMP_FILE=$(mktemp)
    awk -v entry="${GAMELIST_ENTRY_CONTENT}" '
        /<\/gameList>/ { print entry }
        { print }
    ' "$GAMELIST_PATH" > "$TEMP_FILE"
    mv "$TEMP_FILE" "$GAMELIST_PATH"
    echo "Nova entrada adicionada."
}


# --- Execução Principal ---

# 1. Apresentação Inicial
echo "Iniciando a instalação..."
echo "DRL Edition Installer"
sleep 2 # Pausa para visualização
clear

echo "========================================="
echo "  Instalador DRLEdition's Wine Tools"
echo "========================================="
echo ""
echo "ATENÇÃO: Verifique se os links (MARQUEE_URL, THUMB_URL, SCRIPT_URL)"
echo "no início deste script foram substituídos pelos links reais!"
echo "Pressione Enter para continuar ou Ctrl+C para cancelar."
read -r

# 2. Criação de Diretórios
echo "Criando diretórios necessários..."
mkdir -p "$DESKTOP_DIR" || error_exit "Falha ao criar $DESKTOP_DIR"
mkdir -p "$IMAGES_DIR" || error_exit "Falha ao criar $IMAGES_DIR"
echo "Diretórios criados."

# 3. Criação do Arquivo .desktop
echo "Criando arquivo .desktop..."
echo "$DESKTOP_CONTENT" > "$DESKTOP_FILE" || error_exit "Falha ao criar $DESKTOP_FILE"
echo "Arquivo .desktop criado em $DESKTOP_FILE."

# 4. Download das Imagens
download_file "$MARQUEE_URL" "$MARQUEE_IMG"
download_file "$THUMB_URL" "$THUMB_IMG"

# 5. Download e Configuração dos Scripts
download_file "$SCRIPT_URL" "$MAIN_SCRIPT_PATH"
chmod +x "$MAIN_SCRIPT_PATH" || error_exit "Falha ao tornar $MAIN_SCRIPT_PATH executável."
echo "Script principal baixado e configurado."

# 6. Criação do Script de Porta
echo "Criando script de porta..."
echo "$PORT_SCRIPT_CONTENT" > "$PORT_SCRIPT_PATH" || error_exit "Falha ao criar $PORT_SCRIPT_PATH"
chmod +x "$PORT_SCRIPT_PATH" || error_exit "Falha ao tornar $PORT_SCRIPT_PATH executável."
echo "Script de porta criado."

# 7. Atualização do gamelist.xml
echo "Atualizando gamelist.xml..."
if [ ! -f "$GAMELIST_PATH" ] || [ ! -s "$GAMELIST_PATH" ]; then
    create_new_gamelist
else
    create_backup
    if check_entry; then
        remove_entry
    fi
    add_entry
fi
echo "Gamelist.xml atualizado."

# 7. Salvar Overlay (Importante para /usr/bin)
é necessário e está disponível. Use com cuidado.
echo "Salvando overlay... (Pode levar um momento)"
batocera-save-overlay
clear
echo "Overlay salvo."

# 9. Mensagem Final
echo ""
echo "========================================="
echo "  Instalação Concluída!"
echo "========================================="
echo "DRLEdition  foi instalado."
echo "Pode ser necessário reiniciar o EmulationStation para que as alterações"
echo "no gamelist.xml e o novo atalho apareçam."
echo ""

exit 0