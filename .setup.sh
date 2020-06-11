# This script is used to setup my linux system

# Color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

function info_text {
    echo -e "${GREEN} $1 ${NC}"
}

function error_text {
    echo -e "${YELLOW}ERROR: ${RED} $1 ${NC}" 
} 

if [ $USER != "root" ]; then
    error_text "Script must be run as root"
    exit -1
fi

info_text "Installing fish shell"
apt install fish

info_text "Using the fish shell"
fish

info_text "Changing the default shell to fish"
chsh -s /usr/local/bin/fish

info_text "Installing fisher"
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

info_text "Installing fish-nvm"
fisher add jorgebucaran/fish-nvm

info_text "Installing vim"
apt install vim
info_text "Installing vim plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

info_text "Installing node version 12.x"
nvm install node 12

info_text "Installing pip with python3"
apt install python3-pip
info_text "Installing jedi for vim-coc"
pip3 install jedi

info_text "Installing snap store"
apt install snapd

info_text "Installing vscode"
snap install --classic code

info_text "installing gdb"
apt install gdb

info_text "Finished setup"

