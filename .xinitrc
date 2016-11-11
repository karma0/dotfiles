#!/bin/bash


#$HOME/build/btsync/btsync --config /etc/btsync/config

#skype 2>&1 >/dev/null &

# urxvt daemon
#urxvtd --quiet --opendisplay --fork

# Turn on mouse pad tap
synclient TapButton1=1 &

exec i3

