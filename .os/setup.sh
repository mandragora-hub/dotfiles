#!/bin/bash

# Linux shell configs files - Mandragora
# This file handles all my configuration for the Ubuntu system that I'm using like preferences and other stuff.

source 'utils.sh'

clear
print_in_purple '\nUbuntu Config Dotfiles - Mandragora\n\n'
ask_for_sudo

chmod u+x ./*.sh

./computer-info.sh
./git-config.sh

./terminal-preferences.sh
./packages-install.sh
./npm-packages.sh
./zsh-ohmyzsh.sh

./restart.sh
