#!/usr/bin/env sh

# ~/.config/polybar/launch.sh
#
# Startup logic for polybar
#
# More info: https://github.com/polybar/polybar/wiki
#
# See for handling different desktop sessions
# https://github.com/polybar/polybar/issues/763


# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

config_path=$HOME/.config/polybar/config

m=$(polybar --list-monitors | grep "primary"| cut -d":" -f1)
echo "Launching primary monitor: $m"
MONITOR=$m polybar --reload mainbar-i3-primary -c "$config_path" &

for m in $(polybar --list-monitors | grep -v "primary"| cut -d":" -f1); do
    echo "Launching monitor: $m"
    MONITOR=$m polybar --reload mainbar-i3 -c "$config_path" &
    # MONITOR=$m polybar --reload mainbar-i3-extra -c "$config_path" &
done
