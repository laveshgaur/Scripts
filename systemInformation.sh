#!/bin/bash
show_menu(){
    echo "
1) To See System Processes
2) To live processes
3) To See System Info
4) To See Software Info
5) To See Date and Time
6)Exit
"
}
read_menu(){
    read -p "Enter your choice : " option
    echo " "
    case $option in 
        1) ps -f;;
        2) top;;
        3) uname -a;;
        4) more /etc/os-release ;;
        5) date;;
        6) exit;;
    esac
}
while true; do 
show_menu
read_menu
done
