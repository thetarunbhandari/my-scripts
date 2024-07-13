#!/bin/bash

NORMAL_BREAK_TIME="1 hour, 30 minutes"
MID_BREAK_TIME="2 hour"
HIGH_BREAK_TIME='2 hour, 30 minutes'

while true; do
    # get the running time
    uptime="`uptime -p | sed -e 's/up //g'`"
    echo $uptime

    if [[ $uptime == $NORMAL_BREAK_TIME ]]; then
        notify-send -u critical -i "~/Dev/scripts/notification-scripts/icons/system.svg" "System" "It's time to take some break"
        sleep 5
    fi
    if [[ $uptime == $MID_BREAK_TIME ]]; then
        notify-send -u critical -i "~/Dev/scripts/notification-scripts/icons/system.svg" "System" "It's time to take some break"
        sleep 5
    fi
    if [[ $uptime == $HIGH_BREAK_TIME ]]; then
        notify-send -u critical -i "~/Dev/scripts/notification-scripts/icons/system.svg" "System" "It's been 2 hour. The system will lock in 5 second"
        sleep 5
        i3lock -i ~/Pictures/background/2.png && systemctl suspend
    fi
    sleep 1m
done
