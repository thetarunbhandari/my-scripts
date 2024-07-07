#!/bin/bash

low=20
full=80

while true; do
    battery_now=$(cat /sys/class/power_supply/BAT0/capacity)
    battery_status=$(cat /sys/class/power_supply/BAT0/status)

    if [ "$battery_now" -lt $low ] && [ "$battery_status" != "Charging" ]; then
       notify-send -u critical -i "~/Dev/scripts/notification-scripts/icons/bolt.svg" "System" "Charging Low. Please connect to the charger"
       sleep 1m
    elif [ "$battery_now" -eq $full ] && [ "$battery_status" == "Charging" ]; then
	notify-send -u critical -i "~/Dev/scripts/notification-scripts/icons/bolt.svg" "System" "System is fully charged. Please Unplug the charger"
	sleep 1m
    else
	sleep 1m
    fi
done
