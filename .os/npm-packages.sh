#!/bin/bash

source 'utils.sh'

# npm_packages : Asks to install these package through npm.

npm_packages() {

	if cmd_exists "npm"; then

		print_in_blue "Updating npm ..."
		execute "npm update -g npm"
	
		print_in_blue "npm packages"
		npm_install "gitmoji-cli"
		npm_install "n"
	else
		print_error 'npm not installed (required to install node packages).'
	fi
}

npm_packages
