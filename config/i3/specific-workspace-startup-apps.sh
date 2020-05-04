#!/bin/bash

i3-msg workspace 1
google-chrome-stable --password-store=gnome &
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
rocketchat-desktop &
~/.config/i3/wait_for_app.sh "Rocket.Chat"
