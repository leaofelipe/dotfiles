ZSH_THEME="minimal"

# Plugins
plugins=(git)

export ZSH=/home/$(whoami)/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

source ~/.bashrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
