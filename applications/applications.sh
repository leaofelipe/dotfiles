#!/bin/bash

#TODO
# Create SystemPackages file separated to applications

# Update repositories
sudo apt-get update

# Applications
systemPackages=(curl, git)
basicApplications=(vim terminator tmux zsh)

basicSetup() {
    sudo apt-get -y install $1
    echo $1 'installed'
}

for item in ${basicApplications[@]}; do
	basicSetup ${item}
done

for item in ${systemPackages[@]}; do
	basicSetup ${item}
done

# Oh my zsh Install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
exit
