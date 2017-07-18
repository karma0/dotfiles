# -*- coding: utf-8 -*-

import subprocess

from i3pystatus import Status

status = Status(standalone=True)

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31 (KW%V = i3 version)
#              ^-- calendar week
status.register("clock",
    format="%a %-d %b %X W%V",)

# Displays the weather like this:
#
status.register("weather",
    location_code="80203",
    format="Denver {current_temp}",
    units="imperial",
    interval=300)

status.register("pomodoro",
    sound="/usr/share/webkitgtk-3.0/resources/audio/Composite.wav",
    pomodoro_duration=1500,
    break_duration=300,
    long_break_duration=900,
    short_break_count=3)

status.run()
