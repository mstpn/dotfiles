#!/bin/bash

for m in $(polybar --list-monitors | cut -d":" -f1); do
	echo $m
	MONITOR=$m polybar --config=~/.config/polybar/grayblocks/config.ini --reload main 
done

exit
