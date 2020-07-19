#!/bin/bash

if [ $(echo -e 'Yes\nNo' | rofi -theme nord -dmenu -i -lines 2 -p 'Run init apps?') == "No" ]; then
  exit 0;
fi

i3-msg workspace 1
google-chrome-stable --password-store=gnome --auth-server-whitelist="*snapp.net" --auth-negotiate-delegate-whitelist="*snapp.net" &
~/.config/i3/wait_for_app.sh "Google Chrome"

i3-msg workspace 2
alacritty &
~/.config/i3/wait_for_app.sh "~"

i3-msg workspace 3
i3-msg layout tabbed
thunderbird &
~/.config/i3/wait_for_app.sh "Mozilla Thunderbird"
skypeforlinux &
~/.config/i3/wait_for_app.sh "Skype"
riot-desktop &
~/.config/i3/wait_for_app.sh "Riot"
