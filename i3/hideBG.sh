#! /usr/bin/bash
i=1
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    i3-msg workspace $i
    let "i++"
done
