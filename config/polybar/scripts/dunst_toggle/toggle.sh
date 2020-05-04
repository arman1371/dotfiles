#!/bin/bash

state_file=/home/arman/.config/polybar/scripts/dunst_toggle/state
current_state=`cat $state_file`

notify-send "DUNST_COMMAND_TOGGLE"
if [ "$current_state" == "" ]
then
    echo "" > $state_file
else
    echo "" > $state_file
fi
