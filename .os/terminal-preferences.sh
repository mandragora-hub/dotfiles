#!/bin/bash

source 'utils.sh'

# terminalprefs : Setting up my Gnome Terminal preferences

DEFAULT_PROFILE="$(gsettings get org.gnome.Terminal.ProfilesList default)"

terminalprefs() {
	print_in_blue "Setting terminal preferences."

	print_in_blue "Set cursor to underline."
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/cursor-shape "'underline'"

	print_in_blue "Background color: rgb(46,52,54)."
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/background-color "'rgb(46,52,54)'"

	print_in_blue "Background transparency: 5."
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/background-transparency-percent "'5'"

	print_in_blue "Font: MesloLGS NF Bold Italic. Size 10."
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/font "'MesloLGS NF Bold Italic 10'"

	print_in_blue "Foreground color: rgb(211,215,207)."
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/foreground-color "'rgb(211,215,207)'"

	print_in_blue "Setting palette."
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/palette "['rgb(7,54,66)', 'rgb(220,50,47)', 'rgb(133,153,0)', 'rgb(181,137,0)', 'rgb(38,139,210)', 'rgb(211,54,130)', 'rgb(42,161,152)', 'rgb(238,232,213)', 'rgb(0,43,54)', 'rgb(203,75,22)', 'rgb(88,110,117)', 'rgb(101,123,131)', 'rgb(131,148,150)', 'rgb(108,113,196)', 'rgb(147,161,161)', 'rgb(253,246,227)']"

	print_in_blue "Other terminal settings."
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/use-system-font "false"
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/use-theme-colors "false"
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/use-theme-transparency "false"
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/use-transparent-background "true"
	dconf write /org/gnome/terminal/legacy/profiles:/:"${DEFAULT_PROFILE}"/visible-name "'Default'"

}

terminalprefs

