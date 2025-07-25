#!/bin/bash

Desativado() {
# Exibe mensagem inicial 
echo "This feature is under development. It will be available soon!"
echo ""
echo "So, until everything is ready, your desktop will be completely updated!"
echo ""
echo "Please wait, the installation will start in 10 seconds..."
sleep 10
clear
curl -L https://github.com/DRLEdition19/DRLEdition_Interface/raw/refs/heads/main/Install_Desktop.sh | bash
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
echo "Welcome to the automatic installer for the Desktop_Update 8.6.1 by DRL Edition."

# Temporary directory for download
TEMP_DIR="/userdata/tmp/Desktop_Update"
DRL_FILE="$TEMP_DIR/Desktop_Update.DRL"
EXTRACT_DIR="$TEMP_DIR/extracted"
DEST_DIR="/"
PORTS_DIR="/userdata/roms/ports"

# Create the temporary directories
echo "Creating temporary directories..."
# batocera-save-overlay 300
batocera-save-overlay
mkdir -p $TEMP_DIR
mkdir -p $EXTRACT_DIR
mkdir -p $PORTS_DIR
clear

# Download the DRL file
echo "Downloading the DRL file..."
curl -L -o $DRL_FILE "https://github.com/DRLEdition19/DRLEdition_Interface/releases/download/files/Desktop_Update_8.6.1.DRL"

# Check if download was successful
if [ ! -f "$DRL_FILE" ]; then
    echo "Error: Failed to download DRL file"
    exit 1
fi

# Extract the squashfs file
echo "Extracting the DRL file..."
# unsquashfs -f -d "$EXTRACT_DIR" "$DRL_FILE"
unsquashfs -f -d "$DEST_DIR" "$DRL_FILE"

# Check if extraction was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to extract the DRL file"
    rm -rf $TEMP_DIR
    exit 1
fi

# Copia forçada dos arquivos extraídos para o diretório de destino, com sobrescrita
# echo "Copying files to the system (forced overwrite)..."
# cp -rf "$EXTRACT_DIR"/* "$DEST_DIR"

# Cria links simbólicos (adicione comandos específicos aqui, se necessário)

# Limpeza
echo "Cleaning up..."
rm -rf "$TEMP_DIR"

# Salva alterações
echo "Saving changes..."
rm -f "/userdata/system/Desktop/gparted.desktop"
rm -f "/userdata/system/Desktop/vlc.desktop"
rm -f "/userdata/system/Desktop/VLC.desktop"
rm -f "/userdata/system/Desktop/CoreKeyboard.png"
cp -rf "/overlay/overlay/usr/share/applications/CoreKeyboard.desktop" "/userdata/system/Desktop/CoreKeyboard.desktop"
batocera-save-overlay
clear
echo "Installation completed successfully."
echo "For the Desktop to work properly, you will need to restart your machine."
echo "Desktop_Update 8.6.1 by DRL Edition"

exit 0
