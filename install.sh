#!/bin/bash

sudo -
# Updating the packages
#echo -e "\e[93mUpdating packages...\e[m"
#sudo apt-get update -qq

# Basic Install function
#basicInstall() {
#	echo -e "\e[32mInstalling $1\e[m"
#	sudo apt-get -y -qq install $1
#}

# Install System Packages
#source ./applications/system.sh

# Install Applications
#source ./applications/applications.sh

######OK



#syncAll() {
#    rsync --exclude ".git/" --exclude "install.sh" --exclude "readme.md" -avh --no-perms . ~;
#    source ~/.bash_profile;
#}
# unset syncAll;

#echo -n "This will overwrite existin files. Are you sure? (y/n): ";
#read -n response;

#if [ $response =~ ^[Yy]$ ]; then
#    syncAll;
#fi

#unset syncAll;

# Source the main bash_profile
source ~/.bash_profile
