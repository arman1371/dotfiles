#!/bin/bash

HOST=google.com

if ! ping=$(ping -n -c 1 -W 1 $HOST 2>/dev/null); then
    echo "%{F#BF616A}%{F-}"
else
    rtt=$(echo "$ping" | sed -rn 's/.*time=([0-9]{1,})\.?[0-9]{0,} ms.*/\1/p')

    if [ "$rtt" -lt 50 ]; then
        icon="%{F#A3BE8C}$rtt%{F-}"
    elif [ "$rtt" -lt 150 ]; then
        icon="%{F#EBCB8B}$rtt%{F-}"
    else
        icon="%{F#D08770}$rtt%{F-}"
    fi

    echo "$icon"
fi
