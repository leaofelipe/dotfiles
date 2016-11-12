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
if ! [ -d $HOME/.vim/bundle ]; then
    echo -e "\e[32mInstalling Vundle\e[m"
    git clone https://github.com/VundleVim/Vundle.vim.git /home/$(whoami)/.vim/bundle/Vundle.vim

    # Install Vundle plugins
    vim +PluginInstall +qall
fi

# NVM
if [ -d $HOME/.nvm ]; then
    echo "NVM Already installed"
else
    echo -e "\e[32mInstalling NVM\e[m"
    if ! [ -e $HOME/.zshrc ] && ! [ -e $HOME/.bashrc ]; then
        touch $HOME/.bashrc
    fi

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
fi

# Node
echo -e "\e[32mInstalling NODE\e[m"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install node
nvm use default

# NPM Dependencies
echo -e "\e[32mInstalling NPM Dependencies\e[m"
npm install -g grunt-cli
npm install -g bower
