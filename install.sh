#!/bin/bash

if [ ! -d "$HOME/.dotfiles" ]

  then
    echo "-------------------------------------------"
    echo "|                DOTFILES                 |"
    echo "-------------------------------------------"
    echo ""
    echo "Instalando dotfiles, Passos:"
    echo ""
    echo "  - Downloads"
    echo "  - Functions"
    echo "  - Aliases"
    echo "  - Git"
    echo ""

    echo "--------------------------------------"
    echo "|            INSTALL GIT             |"
    echo "--------------------------------------"
    sudo apt-get install git
    echo ""

    git clone --depth=10 https://github.com/jeffersondanielss/.dotfiles "$HOME/.dotfiles"
    cd "$HOME/.dotfiles"
    sudo ./initialize.sh


  else
    echo "You already have folder .dotfiles installed in your home directory."

fi
