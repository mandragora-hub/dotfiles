#!/bin/bash
source 'utils.sh'

# Zshell : Sets ZSH as a default shell and installs Oh-My-ZSH

ZShell() {

	# Set ZSH as the default shell (better than bash).
	execute "sudo apt update && sudo apt install zsh"

	print_success 'Changing to ZSH (shell)'
	chsh -s /bin/zsh


	print_info "Installing Oh-My-ZSH"
	cd ~
	curl -L http://install.ohmyz.sh | sh &> /dev/null
	
	print_info 'Installing p10k theme'
	execute "curl -L -o ~/.oh-my-zsh/custom/themes/materialshell.zsh-theme https://raw.githubusercontent.com/carloscuesta/materialshell/master/materialshell.zsh"
	
	print_info "Installing zsh plugins"
	execute "git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
	execute "git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z"
	execute "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
	
	print_success 'Oh-My-Zsh Installed.'
}

ZShell
