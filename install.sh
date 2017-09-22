#!/bin/bash

# Basic Install function
basicInstall() {
	echo -e "\e[32mInstalling $1\e[m"
	sudo apt -y -qq install $1
}

# Install System Packages
source ./applications/system.sh

# Sync dotfiles
syncAll() {
    rsync --exclude ".git/" --exclude "install.sh" --exclude "readme.md" -avh --no-perms . ~;
    source ~/.bash_profile;
}
syncAll;
unset syncAll;

# Reload .bash_profile
source ~/.bash_profile
