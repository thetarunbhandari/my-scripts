#!/bin/bash

low=20
full=98

battery_now=$(cat /sys/class/power_supply/BAT0/capacity)
battery_status=$(cat /sys/class/power_supply/BAT0/status)

if [ "$battery_now" -lt "$low" ] && [ "$battery_status" != "Charging" ]; then
	notify-send "System" "Charging Low. Please connect to the charger"
elif [ "$battery_now" -eq "$full" ] && [ "$battery_status" == "Charging" ]; then
	notify-send "System" "System is fully charged. Please Unplug the charger"
else
	exit
fi

