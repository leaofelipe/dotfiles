#!/bin/bash

# Updating the packages
echo -e "\e[93mUpdating packages...\e[m"
sudo apt-get update -qq

# Basic Install function
basicInstall() {
	echo -e "\e[32mInstalling $1\e[m"
	sudo apt-get -y -qq install $1
}

# Install System Packages
source ./applications/system.sh

syncAll() {
    rsync --exclude ".git/" --exclude "install.sh" --exclude "readme.md" -avh --no-perms . ~;
    source ~/.bash_profile;
}
unset syncAll;

echo -n "This will overwrite existin files. Are you sure? (1/0): ";
read -n response;

if [ $response = 1 ]; then
    syncAll;
fi
unset syncAll;

# Install Applications
source ./applications/applications.sh

# Source the main bash_profile
source ~/.bash_profile
