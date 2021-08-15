#!/bin/sh

copyq &
redshift -PO 2800 > /dev/null 2>&1 &
flameshot &
autokey-gtk &
terminator &
autokey-gtk &
feh --bg-max --randomize /home/ruben/Pictures/wallpapers/* &
