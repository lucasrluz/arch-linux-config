#!/bin/bash

PCT=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

if [ "$STATUS" = "Charging" ]; then
    ICON=""
else
    if [ "$PCT" -lt 20 ]; then ICON=""
    elif [ "$PCT" -lt 40 ]; then ICON=""
    elif [ "$PCT" -lt 60 ]; then ICON=""
    elif [ "$PCT" -lt 80 ]; then ICON=""
    else ICON=""
    fi
fi

echo "$ICON $PCT%"

