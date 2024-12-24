#!/bin/bash

default_brightness=0.5

if [[ "$1" == "reset" ]]; then
    brightness=1
else
    brightness=${1:-$default_brightness}
fi

xrandr --output eDP-1 --brightness "$brightness"
echo "Screen brightness set to $brightness"
