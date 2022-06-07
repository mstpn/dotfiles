#!/usr/bin/bash

killall -q polybar

sleep 1

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    echo $m
    MONITOR=$m polybar --config=~/.config/polybar/grayblocks/config.ini --reload main &
    echo "done monitor " $m
  done
# else
#   echo "else"
#   polybar --config=~/.config/polybar/grayblocks/config.ini --reload main &
fi
