#!/bin/sh

sudo apt-get update

echo "--------------------------------------"
echo "|                ZSH                 |"
echo "--------------------------------------"
sudo apt-get install zsh

echo "--------------------------------------"
echo "|                GIT                 |"
echo "--------------------------------------"
sudo apt-get install git

echo "--------------------------------------"
echo "|             GIT EXTRAS             |"
echo "--------------------------------------"
sudo apt-get install git-extras

echo "--------------------------------------"
echo "|                VIM                 |"
echo "--------------------------------------"
sudo apt-get install vim

sudo apt-get update

echo "--------------------------------------"
echo "|               CHROME               |"
echo "--------------------------------------"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update 
sudo apt-get install google-chrome-stable

echo "--------------------------------------"
echo "|               VSCODE               |"
echo "--------------------------------------"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get update
sudo apt-get install code

echo "--------------------------------------"
echo "|                NVM                 |"
echo "--------------------------------------"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

sudo apt-get update

# INSTALL NODE LAST VERSION
nvm install node

echo "--------------------------------------"
echo "|             OH MY ZSH              |"
echo "--------------------------------------"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "--------------------------------------"
echo "|        ZSH-AUTOSUGGESTIONS         |"
echo "--------------------------------------"

# zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

echo "----------------------------------------------------------------"
echo "|     Add the plugin to the list of plugins in ~/.zshrc        |"
echo "|                plugins=(zsh-autosuggestions)                 |"
echo "----------------------------------------------------------------"