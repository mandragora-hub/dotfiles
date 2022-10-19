#!/bin/bash

# git_config : Helps you to setup Git.

git_config() {

	if cmd_exists "git"; then
		print_question "Git global username: "
		read -r git_username
		execute "git config --global user.name '$git_username'"

		print_question "Git global email: "
		read -r git_email
		execute "git config --global user.email $git_email\n"
		print_success "Git setup -> Username: $git_username , Email: $git_email\n"
		
		print_question "Git global editor: "
		read -r git_editor
		execute "git config --global core.editor $git_editor --wait"
		
		print_success "Git setup -> Username: $git_username , Email: $git_email\n, Editor: $git_editor\n"
	else
		print_error "Git is not installed."
	fi
}

git_config
