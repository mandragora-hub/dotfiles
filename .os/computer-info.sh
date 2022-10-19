#!/bin/bash

source 'utils.sh'

# set_computer_info : Allows you to set ComputerName, HostName
# (if you have setup this, comment lines 13 to 24)

set_computer_info() {

	print_in_blue "Computer Information\n\n"
	print_question "Computer Name : "
	read -r computer_name
	
	print_question "Hostname : "
	read -r host_name

	hostnamectl set-hostname  "$computer_name"
	hostnamectl set-hostname "$host_name" --pretty
}

set_computer_info
