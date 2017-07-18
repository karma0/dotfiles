#!/bin/bash


if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

# Turn on mouse pad tap
synclient TapButton1=1 &

xkbcomp -w 0 ~/.xkbmap $DISPLAY

exec i3
