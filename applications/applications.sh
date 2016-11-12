#!/bin/bash

# Applications
basicApplications=(terminator)

for item in ${basicApplications[@]}; do
	basicInstall ${item}
done

# Oh my zsh Install
echo -e "\e[32mInstalling oh-my-zsh\e[m"
if ! [ -d /home/$(whoami)/.oh-my-zsh ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install Vundle
if ! [ -d /home/$(whoami)/.vim/bundle ]; then
	echo -e "\e[32mInstalling Vundle\e[m"
	git clone https://github.com/VundleVim/Vundle.vim.git /home/$(whoami)/.vim/bundle/Vundle.vim
	
	# Install Vundle plugins
	vim +PluginInstall +qall
fi
