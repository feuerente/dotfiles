#!/usr/bin/env sh

#
# Select and run a script
#

scripts_dir=$HOME/.dotfiles/scripts/

selected=$(ls $scripts_dir | rofi -dmenu -p "Run")
[[ $selected ]] && /bin/bash $scripts_dir/$selected
