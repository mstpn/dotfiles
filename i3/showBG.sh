#! /usr/bin/bash

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    i3-msg "workspace $m, move workspace to output $m"
done
