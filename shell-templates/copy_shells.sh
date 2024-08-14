#!/usr/bin/env bash

files_available=(./shell-templates/*.nix)
menu_showing=true

show_menu() {
	count=0
	for file in "${files_available[@]}"; do
		file_name=$(basename "$file")
		echo "${count}: ${file_name}"
		count=$((count + 1))
	done
}

while $menu_showing; do
	show_menu

	echo "Please choose which of the files above you want to copy"
	read -r file_location

	if [[ $file_location =~ ^[0-9]+$ ]]; then
		if [ $((file_location + 1)) -le ${#files_available[@]} ]; then
			menu_showing=false
			echo "Where do you want to copy the shell to?"
			read -r location_to_send

			echo "Copying file to: ${location_to_send}"
			sleep 3
			cp "${files_available[file_location]}" "$location_to_send"
		else
			echo "Please use an appropriate number"
			sleep 3
		fi
	else
		echo "Please enter a number"
		sleep 3
	fi
done
