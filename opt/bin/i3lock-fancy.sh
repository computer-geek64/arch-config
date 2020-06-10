#!/bin/bash
# i3lock-fancy.sh

rm /tmp/screen_locked.png
scrot /tmp/screen_locked.png
convert /tmp/screen_locked.png -scale 10% -scale 1000% /tmp/screen_locked2.png
i3lock -ni /tmp/screen_locked2.png
