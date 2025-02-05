#!/bin/bash

if killall swayidle && notify-send "Well, I won't fall asleep in 600 seconds."
else
	swayidle -w timeout 200 'swaylock -f' timeout 210 'hyprctl dispatch dpms off' timeout 600 'systemctl suspend' before-sleep 'swaylock -f'
	notify-send "Well, I'll fall asleep in 600 seconds"
fi.
