#!/bin/bash

source 'utils.sh'

# terminalprefs : Setting up my Gnome Terminal preferences

DEFAULT_PROFILE="$(gsettings get org.gnome.Terminal.ProfilesList default)"

terminalprefs() {

	# Set cursor underline
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/cursor-shape "'underline'"
	print_success "Cursor underline."

	# Set background color
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/background-color "'rgb(46,52,54)'"
	print_success "Setting background color."

	# Set background transparency percent
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/background-transparency-percent "'5'"
	print_success "Background transparency percent."

	# Set font
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/font "'MesloLGS NF Bold Italic 10'"
	print_success "Set font."

	# Set foreground color
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/foreground-color "'rgb(211,215,207)'"
	print_success "Foreground color."

	# Set palette
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/palette "['rgb(7,54,66)', 'rgb(220,50,47)', 'rgb(133,153,0)', 'rgb(181,137,0)', 'rgb(38,139,210)', 'rgb(211,54,130)', 'rgb(42,161,152)', 'rgb(238,232,213)', 'rgb(0,43,54)', 'rgb(203,75,22)', 'rgb(88,110,117)', 'rgb(101,123,131)', 'rgb(131,148,150)', 'rgb(108,113,196)', 'rgb(147,161,161)', 'rgb(253,246,227)']"
	print_success "Setting palette."

	#Other system variables
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/use-system-font "false"
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/use-theme-colors "false"
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/use-theme-transparency "false"
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/use-transparent-background "true"
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/visible-name "'Default'"
	print_success "Other terminal settings ."

}

terminalprefs

