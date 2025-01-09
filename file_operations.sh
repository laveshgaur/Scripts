#!/bin/bash
show_menu(){
	echo "
1. Create a file
2. Delete a file
3. Display files or directories
4. Find and Replace Text in Files
5. Find Files Modified in the Last N Days.
6. Exit
"
}
read_menu(){
	read -p "Enter your choice : " option
	case $option in 
		1) read -p "Enter file name : " name
		if [ -e "$name" ]; then
			echo "File already present try different name "
		else
			touch $name
			echo "File created successfully "
		fi;;
		2) read -p "Enter file name : " name
		if [ -e "$name" ]; then
			rm $name
			echo "File removed successfully"
		else
			echo "File not found"
		fi;;
		3)ls;;
		4)read -p "Enter file path : " path
		  read -p "Enter txt to find : " findtxt
		  read -p "Enter the replacement text : " replace
		  if [ -e "$path" ]; then
		  	sed -i "s/$findtxt/$replace/g" "$path"
			echo "All occurrence replaced of $find with $replace of $path"
		  else
		  	echo "File not found"
		fi;;
		5)read -p "Enter number of days : " days
		  read -p "Enter location where to check : " location
		find $location -mtime -$days;;
		6) exit;;
	esac
}
while true; do
show_menu
read_menu
done
