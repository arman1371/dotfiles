#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

TOP_BAR_NAME=top_bar
BOTTOM_BAR_NAME=bottom_bar
# Launch Polybar, using default config location ~/.config/polybar/config
polybar -l error ${TOP_BAR_NAME} >>/var/log/polybar/${TOP_BAR_NAME}.log 2>&1 &
polybar -l error ${BOTTOM_BAR_NAME} >>/var/log/polybar/${BOTTOM_BAR_NAME}.log 2>&1 &

echo "Polybar launched..."
