#!/bin/bash

# Banner
cat <<'EOF'
___  ___                _                                 _      ______      _    __ _ _              
|  \/  |               | |                               ( )     |  _  \    | |  / _(_) |             
| .  . | __ _ _ __   __| |_ __ __ _  __ _  ___  _ __ __ _|/ ___  | | | |___ | |_| |_ _| | ___  ___    
| |\/| |/ _` | '_ \ / _` | '__/ _` |/ _` |/ _ \| '__/ _` | / __| | | | / _ \| __|  _| | |/ _ \/ __|   
| |  | | (_| | | | | (_| | | | (_| | (_| | (_) | | | (_| | \__ \ | |/ / (_) | |_| | | | |  __/\__ \_  
\_|  |_/\__,_|_| |_|\__,_|_|  \__,_|\__, |\___/|_|  \__,_| |___/ |___/ \___/ \__|_| |_|_|\___||___(_) 
                                     __/ |                                                            
                                    |___/                                                             
                                                                                            
 /\_/\
( o.o )
 > ^ <
EOF
echo "+------------------------------------------+"
printf "| %-40s |\n" "Ubuntu Config Dotfiles - Mandragora"
printf "| %-40s |\n" "$(date)"
printf "| %-40s |\n" "$(uname)"
echo "+------------------------------------------+"


cd; git clone --depth=1 -b update-dotfiles https://github.com/mandragora-hub/dotfiles.git ~/dotfiles

# Install tools 
sudo apt update
sudo apt install -y git xclip bat neofetch stow jq vim

# terminal preferences
# TODO: Verify .os/terminal-preference.sh

# Install Oh-My-ZSH, theme, and plugins 
sudo apt update && sudo apt install -y zsh
sudo chsh -s $(which zsh) $(whoami)

curl -L http://install.ohmyz.sh | sh &> /dev/null
	
echo 'Installing p10k theme'
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Installing zsh plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	

# Node and Npm packages


# Pokemon script
git clone https://gitlab.com/phoneybadger/pokemon-colorscripts.git
pushd pokemon-colorscripts
sudo ./install.sh
popd
rm -rf pokemon-colorscripts

# Create symlink of dotfiles home directory
stow --target="$HOME" --dir="$PWD" --adopt --stow .
# git restore . 