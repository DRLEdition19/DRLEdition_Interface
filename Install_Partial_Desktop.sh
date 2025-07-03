#!/bin/bash
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
