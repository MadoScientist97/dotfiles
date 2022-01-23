#!/bin/bash
if [[ $# -lt 1  ]]; then
    CurrBright=$( xrandr --verbose --current | grep Brightness: | awk '{print $2}i')
    echo "Current Brightness: $(echo "${CurrBright}*100" | bc ) %"
else 
    if [[ $1 = *[!0-9]* || $1 -lt 0 || $1 -gt 100 ]]; then
        echo "Please Enter a value between 0 - 100"
    else
        level=$(echo "scale=2; ${1}/100" | bc)
        xrandr --output eDP-1 --brightness $level
    fi
fi
