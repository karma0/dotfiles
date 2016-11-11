# -*- coding: utf-8 -*-

import subprocess

from i3pystatus import Status

status = Status(standalone=True)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("alsa",
    format="♪{volume}%")

## Shows mpd status
## Format:
## Cloud connected▶Reroute to Remain
#status.register("mpd",
#    format="{title}{status}{album}",
#    status={
#        "pause": "▷",
#        "play": "▶",
#        "stop": "◾",
#    },)

## Shows now playing status
#status.register("now_playing",
#    format="{title}{status}{artist}",
#    status={
#      "pause": "▷",
#      "play": "▶",
#      "stop": "◾",
#    },)

status.register("pomodoro",
    sound="/usr/share/webkitgtk-3.0/resources/audio/Composite.wav",
    pomodoro_duration=1500,
    break_duration=300,
    long_break_duration=900,
    short_break_count=3)

#status.register("spotify")

status.run()
