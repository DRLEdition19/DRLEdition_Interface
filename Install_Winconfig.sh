#!/bin/bash
clear

gamelistconfig() {
# --- Diretórios e Configurações Globais ---
readonly ATALHO="/userdata/system/.local/share/applications/WinConfig.desktop"
readonly TARGET_DIR="/userdata/roms/ports"
readonly TARGET_FILE="gamelist.xml"
readonly GAMELIST_FILE_PATH="${TARGET_DIR}/${TARGET_FILE}"
readonly WGM_FILE="/userdata/roms/ports/- Windows Game Fix.sh"
readonly TEMP_FILE=$(mktemp) || { echo "Erro ao criar arquivo temporário."; }

# Cria diretórios essenciais se não existirem
mkdir -p "$CONFIG_DIR" "$LOG_DIR" "$BACKUP_BASE_DIR"

####################################################################################################
# Função para alterar idioma - Início
####################################################################################################
####################################################################################################

# comando para remover inforações antigas do "gamelist.xml"
limpargamelist() {
FULL_PATH="${GAMELIST_FILE_PATH}"
# Verifica se o arquivo existe
if [ ! -f "$FULL_PATH" ]; then
    echo "Erro: O arquivo '$TARGET_FILE' não foi encontrado."
    # exit 1
fi

# Verifica se as linhas específicas existem
if grep -q "<game>" "$FULL_PATH" && grep -q "       <path>./- Windows Game Fix.sh</path>" "$FULL_PATH"; then
    echo "As linhas de verificação foram encontradas. Iniciando a remoção de 52 linhas..."

    # Encontra o número da linha onde começa a primeira ocorrência de "<game>"
    # que é seguida por "<path>./- Windows Game Fix.sh</path>"
    START_LINE=$(grep -n -A 1 "<game>" "$FULL_PATH" | grep -B 1 "       <path>./- Windows Game Fix.sh</path>" | head -n 1 | cut -d: -f 1)

    if [ -z "$START_LINE" ]; then
        echo "Não foi possível determinar a linha inicial para a remoção."
        # exit 1
    fi

    END_LINE=$((START_LINE + 51)) # 50 linhas abaixo da primeira, totalizando 52

    echo "Removendo linhas de $START_LINE a $END_LINE..."

    # Usa sed para excluir as linhas
    sed -i "${START_LINE},${END_LINE}d" "$FULL_PATH"
    echo "As linhas foram removidas com sucesso de '$TARGET_FILE'."
else
    echo "As linhas de verificação não foram encontradas. Nenhuma ação será tomada."
fi
}

# Comando para instalar o idioma em Portugês Brasil
ptbr() {
    # Caminho do arquivo de idioma
    local drl_file="/userdata/roms/ports/- Windows Game Fix.sh"

    # Sobrescreve o arquivo com o conteúdo apropriado
    cat > "$drl_file" << EOF
#!/bin/bash
winconfig-redist-pt
EOF

    # Ajusta as permissões
    chmod 777 "$drl_file"

# Sobrescreve o arquivo com o conteúdo apropriado
    cat > "$ATALHO" << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=WinConfig - Windows Game Fix
Exec=winconfig-redist-pt
Terminal=false
Categories=Utility;Application;batocera.linux;
Icon=/userdata/system/configs/bat-drl/WindowsGameFix-icon.png
EOF

    # Ajusta as permissões
    chmod 777 "$ATALHO"
    
    # Executa o comando winconfig-redist-lang, se existir
    if command -v winconfig-redist-lang >/dev/null 2>&1; then
        winconfig-redist-lang
    else
        warning "Comando 'winconfig-redist-lang' não encontrado!"
    fi
}

# Comando para instalar o idioma em Inglês
ingles() {
# --- Início da Lógica ---
aplicargamelist

    # Caminho do arquivo de idioma
    local drl_file="/userdata/roms/ports/- Windows Game Fix.sh"

    # Sobrescreve o arquivo com o conteúdo apropriado
    cat > "$drl_file" << EOF
#!/bin/bash
winconfig-redist-en
EOF

    # Ajusta as permissões
    chmod 777 "$drl_file"

# Sobrescreve o arquivo com o conteúdo apropriado
    cat > "$ATALHO" << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=WinConfig - Windows Game Fix
Exec=winconfig-redist-en
Terminal=false
Categories=Utility;Application;batocera.linux;
Icon=/userdata/system/configs/bat-drl/WindowsGameFix-icon.png
EOF

    # Ajusta as permissões
    chmod 777 "$ATALHO"
    
    # Executa o comando winconfig-redist-lang, se existir
    if command -v winconfig-redist-lang >/dev/null 2>&1; then
        winconfig-redist-lang
    else
        warning "Comando 'winconfig-redist-lang' não encontrado!"
    fi
}

# Comando para instalar o idioma em Espanhol
espanhol() {
    # Caminho do arquivo de idioma
    local drl_file="/userdata/roms/ports/- Windows Game Fix.sh"

    # Sobrescreve o arquivo com o conteúdo apropriado
    cat > "$drl_file" << EOF
#!/bin/bash
winconfig-redist-es
EOF

    # Ajusta as permissões
    chmod 777 "$drl_file"

# Sobrescreve o arquivo com o conteúdo apropriado
    cat > "$ATALHO" << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=WinConfig - Windows Game Fix
Exec=winconfig-redist-es
Terminal=false
Categories=Utility;Application;batocera.linux;
Icon=/userdata/system/configs/bat-drl/WindowsGameFix-icon.png
EOF

    # Ajusta as permissões
    chmod 777 "$ATALHO"
    
    # Executa o comando winconfig-redist-lang, se existir
    if command -v winconfig-redist-lang >/dev/null 2>&1; then
        winconfig-redist-lang
    else
        warning "Comando 'winconfig-redist-lang' não encontrado!"
    fi
}

# Comando para instalar o idioma em Italiano
italiano() {
    # Caminho do arquivo de idioma
    local drl_file="/userdata/roms/ports/- Windows Game Fix.sh"

    # Sobrescreve o arquivo com o conteúdo apropriado
    cat > "$drl_file" << EOF
#!/bin/bash
winconfig-redist-it
EOF

    # Ajusta as permissões
    chmod 777 "$drl_file"

# Sobrescreve o arquivo com o conteúdo apropriado
    cat > "$ATALHO" << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=WinConfig - Windows Game Fix
Exec=winconfig-redist-it
Terminal=false
Categories=Utility;Application;batocera.linux;
Icon=/userdata/system/configs/bat-drl/WindowsGameFix-icon.png
EOF

    # Ajusta as permissões
    chmod 777 "$ATALHO"
    
    # Executa o comando winconfig-redist-lang, se existir
    if command -v winconfig-redist-lang >/dev/null 2>&1; then
        winconfig-redist-lang
    else
        warning "Comando 'winconfig-redist-lang' não encontrado!"
    fi
}

# Comando para instalar o idioma em Francês
frances() {
    # Caminho do arquivo de idioma
    local drl_file="/userdata/roms/ports/- Windows Game Fix.sh"

    # Sobrescreve o arquivo com o conteúdo apropriado
    cat > "$drl_file" << EOF
#!/bin/bash
winconfig-redist-fr
EOF

    # Ajusta as permissões
    chmod 777 "$drl_file"

# Sobrescreve o arquivo com o conteúdo apropriado
    cat > "$ATALHO" << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=WinConfig - Windows Game Fix
Exec=winconfig-redist-fr
Terminal=false
Categories=Utility;Application;batocera.linux;
Icon=/userdata/system/configs/bat-drl/WindowsGameFix-icon.png
EOF

    # Ajusta as permissões
    chmod 777 "$ATALHO"
    
    # Executa o comando winconfig-redist-lang, se existir
    if command -v winconfig-redist-lang >/dev/null 2>&1; then
        winconfig-redist-lang
    else
        warning "Comando 'winconfig-redist-lang' não encontrado!"
    fi
}

# Script multilíngue de seleção de idioma - by DRL Edition
# Exibe um menu interativo para escolher o idioma e executar comandos
show_menu() {
    clear

    # Data e Hora
    local data=$(date +%d/%m/%Y)
    local hora=$(date +%H:%M:%S)

    echo "========================================="
    echo "         Language Selector - DRL Edition"
    echo "========================================="
    echo "Data / Date / Fecha: $data"
    echo "Hora / Time / Ora / Heure: $hora"
    echo
    echo "Escolha seu idioma / Choose your language / Elige tu idioma / Scegli la lingua / Choisissez votre langue:"
    echo "1: Português Brasil"
    echo "2: English"
    echo "3: Español"
    echo "4: Italiano"
    echo "5: Français"
    echo
    echo "Digite o número e pressione Enter / Type the number and press Enter / Escriba el número y presione Enter / Inserisci il numero e premi Invio / Entrez le numéro et appuyez sur Entrée:"
    read -rp "> " opcao
}

while true; do
    show_menu
    case "$opcao" in
        1)
            echo "Instalando Idioma Português Brasil. Aguarde..."
			clear
            limpargamelist
			clear
            ptbr
			clear
            break
            ;;
        2)
            echo "Installing English language. Please wait..."
			clear
            limpargamelist
			clear
            ingles
			clear
            break
            ;;
        3)
            echo "Instalando idioma Español. Esperar..."
			clear
            limpargamelist
			clear
            espanhol
			clear
            break
            ;;
        4) # Adicionado
            echo "Installazione della lingua Italiana. Aspettare..."
			clear
            limpargamelist
			clear
            italiano
			clear
            break
            ;;
        5) # Adicionado
            echo "Installation de la langue Française. Attendez..."
			clear
            limpargamelist
			clear
            frances
			clear
            break
            ;;
        *)
            echo -e "\nOpção inválida. Tente novamente / Invalid option. Try again. / Opción inválida. Intente nuevamente. / Opzione non valida. Riprova / Option invalide. Essayer à nouveau."
            read -rp "Pressione Enter / Press Enter / Presione Enter / Premi Invio / Appuyez sur Entrée..."
            ;;
    esac
done

# 4. Executar comando `batocera-save-overlay`
clear
echo "Processo concluído com sucesso! / Process completed successfully! / ¡Proceso completado exitosamente! / Processo completato con successo! / Processus terminé avec succès!"

exit 0

}

# Exibe mensagem inicial 
echo "Presenting..."
sleep 2

# Limpa o terminal
#clear

# Função para exibir data e hora atual
show_current_time() {
    echo -e "Current Date and Time (UTC): $(date '+%Y-%m-%d %H:%M:%S')"
    echo
}

# Função para animação de digitação
type_text() {
    text="$1"
    for ((i=0; i<${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep 0.05
    done
    echo
}

# Códigos de cores ANSI
blue="\e[34m"   # cor final: azul
reset="\e[0m"

# Vetor expandido com 15 cores em degradê
colors=(
    "\e[38;5;196m"  # Vermelho vivo
    "\e[38;5;202m"  # Laranja escuro
    "\e[38;5;208m"  # Laranja
    "\e[38;5;214m"  # Laranja claro
    "\e[38;5;220m"  # Amarelo
    "\e[38;5;226m"  # Amarelo brilhante
    "\e[38;5;190m"  # Verde-amarelado
    "\e[38;5;118m"  # Verde claro
    "\e[38;5;46m"   # Verde
    "\e[38;5;48m"   # Verde água
    "\e[38;5;51m"   # Ciano
    "\e[38;5;45m"   # Azul claro
    "\e[38;5;39m"   # Azul
    "\e[38;5;63m"   # Azul-violeta
    "\e[38;5;129m"  # Violeta
)

# Arte ASCII do DRL Edition
ascii_art=(
"██████╗ ██████╗  ██╗         ███████╗██████╗ ██╗████████╗██╗ ██████╗ ███╗   ██╗"
"██╔══██╗██╔══██╗ ██║         ██╔════╝██╔══██╗██║╚══██╔══╝██║██╔═══██╗████╗  ██║"
"██║  ██║██████╔╝ ██║         █████╗  ██║  ██║██║   ██║   ██║██║   ██║██╔██╗ ██║"
"██║  ██║██╔══██╗ ██║         ██╔══╝  ██║  ██║██║   ██║   ██║██║   ██║██║╚██╗██║"
"██████╔╝██║  ██║ ███████╗    ███████╗██████╔╝██║   ██║   ██║╚██████╔╝██║ ╚████║"
"╚═════╝ ╚═╝  ╚═╝ ╚══════╝    ╚══════╝╚═════╝ ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝"
)

# Animação da arte ASCII com efeito degradê
for ((k=0; k<3; k++)); do  # 3 ciclos completos
    for ((i=0; i<${#colors[@]}; i++)); do
        clear
        # Mostra data e hora 
        show_current_time
        
        # Mostra a arte ASCII na cor atual do degradê
        for line in "${ascii_art[@]}"; do
            echo -e "${colors[$i]}${line}${reset}"
        done
        sleep 0.1
    done
done

# Mostra a versão final em azul
clear
show_current_time
for line in "${ascii_art[@]}"; do
    echo -e "${blue}${line}${reset}"
done

# Pula uma linha
echo ""

# Mensagem final com animação de digitação
echo -ne "${PURPLE}"  # Cor roxa para a mensagem final
type_text "Thank you for running this script!"  
type_text "Developed by DRLEdition19"  
type_text "The installation will start in a few moments. Please wait..."
sleep 2
clear


# Welcome message
echo "Welcome to the automatic installer for the Winconfig by DRL Edition."

# Temporary directory for download
TEMP_DIR="/userdata/tmp/Winconfig"
DRL_FILE="$TEMP_DIR/Winconfig.DRL"
EXTRACT_DIR="$TEMP_DIR/extracted"
DEST_DIR="/"
PORTS_DIR="/userdata/roms/ports"
DEPS_INSTALLER="- Windows Game Fix.sh"

# Create the temporary directories
echo "Creating temporary directories..."
mkdir -p $TEMP_DIR
mkdir -p $EXTRACT_DIR
mkdir -p $PORTS_DIR

# Download the DRL file
echo "Downloading the DRL file..."
curl -L -o $DRL_FILE "https://github.com/DRLEdition19/DRLEdition_Interface/releases/download/files/Winconfig_Files_full_3.0.DRL"

# Check if download was successful
if [ ! -f "$DRL_FILE" ]; then
    echo "Error: Failed to download DRL file"
    exit 1
fi

# Extract the squashfs file
echo "Extracting the DRL file..."
unsquashfs -f -d "$EXTRACT_DIR" "$DRL_FILE"

# Check if extraction was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to extract the DRL file"
    rm -rf $TEMP_DIR
    exit 1
fi

# Find and copy the Winconfig installer
echo "Looking for Winconfig installer..."
FOUND_INSTALLER=$(find "$EXTRACT_DIR" -type f -name "$DEPS_INSTALLER")
if [ ! -z "$FOUND_INSTALLER" ]; then
    echo "Found Winconfig installer. Copying to ports directory..."
    cp "$FOUND_INSTALLER" "$PORTS_DIR/"
    chmod 755 "$PORTS_DIR/$DEPS_INSTALLER"
    echo "Winconfig installer copied successfully to $PORTS_DIR"
else
    echo "Warning: Winconfig installer not found in the extracted files"
fi

# Copy the extracted files to the root directory
echo "Copying files to the system..."
cp -r $EXTRACT_DIR/* $DEST_DIR

# Create symbolic links
echo "Creating symbolic links..."

# Function to create a symbolic link and remove the target if it already exists
create_symlink() {
    local target="$1"
    local link="$2"

    # Remove existing file or directory
    if [ -e "$link" ] || [ -L "$link" ]; then
        echo "Removing existing link or file: $link"
        rm -rf "$link"
    fi

    # Create the new symbolic link
    ln -s "$target" "$link"
    echo "Created symlink: $link → $target"
}

create_symlink "/userdata/system/configs/bat-drl/AntiMicroX" "/opt/AntiMicroX"
create_symlink "/userdata/system/configs/bat-drl/AntiMicroX/antimicrox" "/usr/bin/antimicrox"

# Set permissions for specific files
echo "Setting permissions for specific files..."
chmod 777 /userdata/system/configs/bat-drl/AntiMicroX/antimicrox
chmod 777 /userdata/system/configs/bat-drl/AntiMicroX/antimicrox.sh

# Clean up
echo "Cleaning up..."
rm -rf $TEMP_DIR

# Save changes
echo "Saving changes..."
batocera-save-overlay
echo "Installation completed successfully."


# Gamelist config
gamelistconfig
