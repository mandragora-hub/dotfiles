#!/bin/bash

source 'utils.sh'

# xclip_install : Installing xclip (Allow use clipboard in terminal)

xclip_install() {

	ask_for_confirmation "Would you like to install xclip (Allow use clipboard in terminal)?"

	if answer_is_yes; then
		execute "sudo apt update"
		execute "sudo apt install xclip"
		if cmd_exists "xclip"; then
			print_success 'xclip has been succesfully installed!'
		else
			print_error 'xclip not installed.'
		fi
	else
		print_error 'xclip not installed.'
	fi
}

# bat_install : Installing bat (Allow use clipboard in terminal)

bat_install() {

	ask_for_confirmation "Would you like to install bat?"

	if answer_is_yes; then
		execute "sudo apt update"
		execute "sudo apt install bat"
		if cmd_exists "bat"; then
			print_success 'bat has been succesfully installed!'
		else
			print_error 'bat not installed.'
		fi
	else
		print_error 'bat not installed.'
	fi
}

# neofetch_install : Installing neofetch (Allow use clipboard in terminal)

neofetch_install() {

	ask_for_confirmation "Would you like to install neofetch?"

	if answer_is_yes; then
		execute "sudo apt update"
		execute "sudo apt install neofetch"
		if cmd_exists "neofetch"; then
			print_success 'neofetch has been succesfully installed!'
		else
			print_error 'neofetch not installed.'
		fi
	else
		print_error 'neofetch not installed.'
	fi
}

# stow_install : Installing stow 

stow_install() {

	ask_for_confirmation "Would you like to install stow?"

	if answer_is_yes; then
		execute "sudo apt update"
		execute "sudo apt install stow"
		if cmd_exists "stow"; then
			print_success 'stow has been succesfully installed!'
		else
			print_error 'stow not installed.'
		fi
	else
		print_error 'stow not installed.'
	fi
}

# jq_install : Installing jq

jq_install() {

	ask_for_confirmation "Would you like to install jq?"

	if answer_is_yes; then
		execute "sudo apt update"
		execute "sudo apt install jq"
		if cmd_exists "jq"; then
			print_success 'jq has been succesfully installed!'
		else
			print_error 'jq not installed.'
		fi
	else
		print_error 'jq not installed.'
	fi
}

# vim_install : Installing vim

vim_install() {

	ask_for_confirmation "Would you like to install vim?"

	if answer_is_yes; then
		execute "sudo apt update"
		execute "sudo apt install vim"
		if cmd_exists "vim"; then
			print_success 'vim has been succesfully installed!'
		else
			print_error 'vim not installed.'
		fi
	else
		print_error 'vim not installed.'
	fi
}

xclip_install
bat_install
neofetch_install
stow_install
jq_install
vim_install