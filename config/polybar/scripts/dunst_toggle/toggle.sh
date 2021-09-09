#!/bin/bash

state_file=/home/arman/.config/polybar/scripts/dunst_toggle/state

dunstctl set-paused toggle
if [ $(dunstctl is-paused) == "false" ]
then
    echo "" > $state_file
else
    echo "" > $state_file
fi
