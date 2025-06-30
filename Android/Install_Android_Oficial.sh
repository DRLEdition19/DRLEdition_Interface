#!/bin/bash
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
type_text "Acknowledgements: KevoBatoYT"
type_text "The installation will start in a few moments. Please wait..."
sleep 2
clear


# Welcome message
echo "Welcome to the automatic installer for the Android 5.6.1 by DRL Edition."

# Temporary directory for download
TEMP_DIR="/userdata/tmp/Android"
DRL_FILE="$TEMP_DIR/Android.DRL"
EXTRACT_DIR="$TEMP_DIR/extracted"
DEST_DIR="/"
PORTS_DIR="/userdata/roms/ports"
GAMELIST_PATH="${PORTS_DIR}/gamelist.xml"
BACKUP_PATH="${PORTS_DIR}/gamelist.xml.DRL"
APP_NAME="Android"
APP_EXEC="Android"
PORT_SCRIPT_PATH="${PORTS_DIR}/${APP_EXEC}.sh"
PORT_SCRIPT_NAME="${APP_EXEC}.sh"
DEST_FILE="/userdata/system/configs/bat-drl/Android/Android.iso"
URL_ISO_GE16="https://sinalbr.dl.sourceforge.net/project/blissos-x86/Official/BlissOS16/Gapps/Generic/Bliss-v16.9.7-x86_64-OFFICIAL-gapps-20241011.iso?viasf=1"
URL_ISO_GO14="https://sinalbr.dl.sourceforge.net/project/blissos-x86/Official/BlissOS14/OpenGApps/Go/Bliss-Go-v14.10.3-x86_64-OFFICIAL-opengapps-20241012.iso?viasf=1"
URL_ISO_GO16="https://sinalbr.dl.sourceforge.net/project/blissos-x86/Official/BlissOS16/Gapps/Go/Bliss-Go-v16.9.7-x86_64-OFFICIAL-gapps-20241012.iso?viasf=1"

GAMELIST_ENTRY_CONTENT="	<game>
		<path>./${PORT_SCRIPT_NAME}</path>
		<name>${APP_NAME}</name>
		<desc>=========================================
Info: ${APP_NAME} for Batocera
Developer: DRL Edition 19
Acknowledgements: KevoBatoYT
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
		<developer>DRL Edition</developer>
		<publisher>DRL Edition</publisher>
		<players>1</players>
		<favorite>true</favorite>
		<lang>en</lang>
		<sortname>1 =- ${APP_NAME}</sortname>
		<genreid>Android For Batocera</genreid>
		<screenshot>./images/${APP_EXEC}-thumb.png</screenshot>
	</game>"

# Function to create backup
create_backup() {
    if [ -f "$GAMELIST_PATH" ]; then
        cp -rf "$GAMELIST_PATH" "$BACKUP_PATH"
        echo "gamelist.xml backup created at: $BACKUP_PATH"
    fi
}

# Function to create new gamelist.xml
create_new_gamelist() {
    echo "Creating new gamelist.xml file..."
    cat > "$GAMELIST_PATH" << EOF
<?xml version="1.0"?>
<gameList>
${GAMELIST_ENTRY_CONTENT}
</gameList>
EOF
    echo "gamelist.xml file created successfully!"
}

# Function to check if the entry already exists
check_entry() {
    if [ -f "$GAMELIST_PATH" ]; then
        grep -q "<path>./${PORT_SCRIPT_NAME}</path>" "$GAMELIST_PATH"
        return $?
    else
        return 1
    fi
}

# Function to remove the existing entry (using awk)
remove_entry() {
    echo "Removing existing entry..."
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
    echo "Existing entry removed."
}

# Function to add the entry (using awk)
add_entry() {
    echo "Adding new entry..."
    TEMP_FILE=$(mktemp)
    awk -v entry="${GAMELIST_ENTRY_CONTENT}" '
        /<\/gameList>/ { print entry }
        { print }
    ' "$GAMELIST_PATH" > "$TEMP_FILE"
    mv "$TEMP_FILE" "$GAMELIST_PATH"
    echo "New entry added."
}

# Create the temporary directories
echo "Creating temporary directories..."
# batocera-save-overlay 300
batocera-save-overlay
mkdir -p $TEMP_DIR
mkdir -p $EXTRACT_DIR
mkdir -p $PORTS_DIR
mkdir -p "/userdata/system/configs/bat-drl/Android"
mkdir -p "/userdata/tmp"
clear

# Download the DRL file

echo # Blank line for better readability

# --- BLOCO DE VERIFICAÇÃO INICIAL ---
# O script primeiro verifica se um dos arquivos ISO já existe.
echo "Checking for existing installation files..."
if [ -f "$FILE_GE16" ] || [ -f "$FILE_GO16" ]; then
    echo "An existing installation file was found."

    # Se um arquivo for encontrado, pergunta ao usuário o que fazer.
    while true; do
        read -p "Do you want to remove it and download a new version? (y/n): " choice
        case $choice in
            [Yy]* )
                # Se o usuário disser 'sim', remove os arquivos existentes.
                echo "Removing old files..."
                rm -f "$FILE_GE16" "$FILE_GO16"
                # A instalação prosseguirá normalmente.
                break
                ;;
            [Nn]* )
                # Se o usuário disser 'não', o script pulará toda a etapa de download.
                echo "Keeping the existing file. Skipping download and proceeding with the script..."
                SKIP_INSTALLATION=1
                sleep 3
                break
                ;;
            * )
                echo "Invalid option. Please enter 'y' for yes or 'n' for no."
                ;;
        esac
    done
fi

# --- BLOCO DE SELEÇÃO E DOWNLOAD ---
# Este bloco inteiro só será executado se a variável SKIP_INSTALLATION for 0.
if [ "$SKIP_INSTALLATION" -eq 0 ]; then

    clear
    echo "Which version of Android would you like to install?"
    echo "  1) BlissOS 16 Generic Version (Recommended for most hardware)"
    echo "  2) BlissOS 16 GO Version (Optimized for computers with low processing power and RAM)"
    echo

    # Loop para garantir que o usuário insira uma opção válida
    while true; do
        read -p "Enter the number of your choice (1, 2): " version_choice
        case $version_choice in
            1|2)
                break # Sai do loop se a escolha for válida
                ;;
            *)
                echo "Invalid option. Please enter a valid number."
                ;;
        esac
    done

    # Define as variáveis URL e DEST_FILE com base na escolha
    case "$version_choice" in
        1)
            echo "You have selected the BlissOS 16 Generic Version."
            URL=$URL_ISO_GE16
            ;;
        2)
            echo "You have selected the BlissOS 16 GO Version."
            URL=$URL_ISO_GO16
            ;;
    esac

    echo # Linha em branco para clareza

    # Inicia o processo de download
    echo "Starting download for: $DEST_FILE"
    sleep 2

    if curl -L -o "$DEST_FILE" "$URL"; then
        echo "Download completed successfully!"
    else
        echo "ERROR: An error occurred during the download."
        echo "The script cannot continue without the file. Exiting."
        exit 1 # Encerra o script se o download falhar
    fi
fi

clear
echo "Downloading the DRL file..."
curl -L -o $DRL_FILE "https://github.com/DRLEdition19/DRLEdition_Interface/releases/download/files/Android_5.6.1.DRL"

# Check if download was successful
if [ ! -f "$DRL_FILE" ]; then
    echo "Error: Failed to download DRL file"
    exit 1
fi

# Extract the squashfs file
echo "Extracting the DRL file..."
unsquashfs -f -d "$EXTRACT_DIR" "$DRL_FILE"
# unsquashfs -f -d "$DEST_DIR" "$DRL_FILE"

# Check if extraction was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to extract the DRL file"
    rm -rf $TEMP_DIR
    exit 1
fi


# gamelist.xml Update
echo "Updating gamelist.xml..."
if [ ! -f "$GAMELIST_PATH" ] || [ ! -s "$GAMELIST_PATH" ]; then
    create_new_gamelist
else
    create_backup
    if check_entry; then
        remove_entry
    fi
    add_entry
fi
echo "Gamelist.xml updated."
clear

# Copia forçada dos arquivos extraídos para o diretório de destino, com sobrescrita
echo "Copying files to the system (forced overwrite)..."
cp -rf "$EXTRACT_DIR"/* "$DEST_DIR"

# Cria links simbólicos (adicione comandos específicos aqui, se necessário)

# Limpeza
echo "Cleaning up..."
rm -rf "$TEMP_DIR"

# Salva alterações
batocera-save-overlay
clear
echo "Installation completed successfully."
echo "Android 5.6.1 by DRL Edition"

exit 0
