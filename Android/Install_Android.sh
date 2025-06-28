#!/bin/bash
# Download do arquivo
echo "Baixando o arquivo..."
wget -O "/userdata/tmp/Install_Android_Oficial.sh" "https://github.com/DRLEdition19/DRLEdition_Interface/raw/refs/heads/main/Android/Install_Android_Oficial.sh"
echo "Download concluído com sucesso."

# Configura as permissões
echo "Configurando permissões (chmod 777)..."
chmod 777 /userdata/tmp/Install_Android_Oficial.sh
clear

# Inicia a ferramenta para configurar o Idioma
xterm -fs 14 -fg white -bg black -fa "Monospace" -en UTF-8 -sb -rightbar -e bash -c "PS1='[\u@\h \$PWD]# ' /bin/bash /userdata/tmp/Install_Android_Oficial.sh"

rm -r -f /userdata/tmp/Install_Android_Oficial.sh
