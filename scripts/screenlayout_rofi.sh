#!/usr/bin/env sh

#
# Select and apply a screenlayout (generatet by arandr)
#

directory=~/.screenlayout/

selected=$(ls $directory| rofi -dmenu -p "Run: ")
[[ $selected ]] && /bin/bash $directory/$selected

feh --bg-fill ~/.dotfiles/wallpaper/bg_stone.jpg &
