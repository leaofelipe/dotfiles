#!/bin/bash

echo -e "\e[93mGetting system packages\e[m"

# Applications
systemPackages=(curl git vim tmux zsh)

for item in ${systemPackages[@]}; do
	basicInstall ${item}
done

# Install Vundle
if ! [ -d $HOME/.vim/bundle ]; then
    echo -e "\e[32mInstalling Vundle\e[m"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    # Install Vundle plugins
    vim +PluginInstall +qall
fi

# Oh my zsh Install
echo -e "\e[32mInstalling oh-my-zsh\e[m"
if ! [ -d /home/$(whoami)/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

