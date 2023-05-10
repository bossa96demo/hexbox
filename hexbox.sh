#!/bin/bash

# Define a hex color code
if [ $# -gt 0 ]; then
	color=$1
else
	read -p "hex color(ex. ab0b42): " color
fi

# Convert the hex color code to decimal format
r=$(printf '%d' "0x${color:0:2}")
g=$(printf '%d' "0x${color:2:2}")
b=$(printf '%d' "0x${color:4:2}")

# Use the ANSI escape code to change the text color
echo -e "\e[38;2;${r};${g};${b}m███████\n███████\n███████\e[0m"
