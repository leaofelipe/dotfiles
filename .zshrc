ZSH_THEME="gianu"

# Plugins
plugins=(git)

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

source $HOME/.bashrc

# Pyenv
# eval "$(pyenv init -)"

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Visual Studio
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Export Python CURL for Backstage
# export PYCURL_SSL_LIBRARY=openssl
# export LDFLAGS=-L/usr/local/opt/openssl/lib
# export CPPFLAGS=-I/usr/local/opt/openssl/include
