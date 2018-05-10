#!/bin/bash

# Sync dotfiles
syncAll() {
    rsync --exclude ".git/" --exclude "install.sh" --exclude "readme.md" -avh --no-perms . ~;
    source ~/.bash_profile;
}
syncAll;
unset syncAll;

# Reload .bash_profile
source ~/.bash_profile
