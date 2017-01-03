#!/bin/bash

# Updating the packages
echo -e "\e[93mUpdating and upgrading packages...\e[m"
sudo apt update -qq
sudo apt upgrade -qq

# Basic Install function
basicInstall() {
	echo -e "\e[32mInstalling $1\e[m"
	sudo apt -y -qq install $1
}

# Sync dotfiles
syncAll() {
    rsync --exclude ".git/" --exclude "install.sh" --exclude "readme.md" -avh --no-perms . ~;
    source ~/.bash_profile;
}
syncAll;
unset syncAll;

# Install System Packages
source ./applications/system.sh

# Reload .bash_profile
source ~/.bash_profile
