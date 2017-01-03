#!/bin/bash

echo -e "\e[93mGetting system packages\e[m"

# Applications
systemPackages=(curl git vim tmux zsh)

for item in ${systemPackages[@]}; do
	basicInstall ${item}
done
