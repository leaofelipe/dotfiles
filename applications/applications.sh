#!/bin/bash

# Applications
basicApplications=(vim terminator tmux zsh)

for item in ${basicApplications[@]}; do
	basicInstall ${item}
done

# Oh my zsh Install
echo -e "\e[32mInstalling oh-my-zsh\e[m"
if ! [ -d /home/$(whoami)/.oh-my-zsh ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
