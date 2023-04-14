#!/bin/bash

# Define a hex color code
read -p "hex color(ex. #ab0b42): " color

# Convert the hex color code to decimal format
r=$(printf '%d' "0x${color:1:2}")
g=$(printf '%d' "0x${color:3:2}")
b=$(printf '%d' "0x${color:5:2}")

# Use the ANSI escape code to change the text color
echo -e "\e[38;2;${r};${g};${b}m███████\n███████\n███████\e[0m"
