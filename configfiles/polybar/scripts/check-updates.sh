#!/bin/sh
#source https://github.com/x70b1/polybar-scripts
#source https://github.com/polybar/polybar-scripts

if ! updates=$(checkupdates 2> /dev/null | wc -l); then
    updates=0
fi

if [ "$updates" -gt 0 ]; then
    echo "$updates"
else
    echo ""
fi
