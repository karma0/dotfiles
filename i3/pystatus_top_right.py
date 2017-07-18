# -*- coding: utf-8 -*-

import subprocess

from i3pystatus import Status

status = Status(standalone=True)

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#              ^-- calendar week
status.register("clock",
  format="%a %-d %b %X KW%V",)

# Displays the weather like this:
#
status.register("weather",
  location_code="80203",
  format="Denver {current_temp}",
  units="imperial",
  interval=300)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load")

# Shows your CPU temperature, if you have a Intel CPU
status.register("temp",
  format="{temp:.0f}°C",)

# The battery monitor has many formatting options, see README for details

# This would look like this, when discharging (or charging)
# ↓14.22W 56.15% [77.81%] 2h:41m
# And like this if full:
# =14.22W 100.0% [91.21%]
#
# This would also display a desktop notification (via dbus) if the percentage
# goes below 5 percent while discharging. The block will also color RED.
#status.register("battery",
#  format="{status}/{consumption:.2f}W {percentage:.2f}% [{percentage_design:.2f}%] {remaining:%E%hh:%Mm}",
#  alert=True,
#  alert_percentage=5,
#  status={
#    "DIS": "↓",
#    "CHR": "↑",
#    "FULL": "=",
#  },)
#
## This would look like this:
## Discharging 6h:51m
#status.register("battery",
#  format="{status} {remaining:%E%hh:%Mm}",
#  alert=True,
#  alert_percentage=5,
#  status={
#    "DIS":  "Discharging",
#    "CHR":  "Charging",
#    "FULL": "Bat full",
#  },)

# Displays whether a DHCP client is running
status.register("runwatch",
  name="DHCP",
  path="/run/sendsigs.omit.d/*.dhclient*.pid",)

# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces
status.register("network",
  #interface="eth1",
  interface="eth0",
  format_up="{v4cidr}",)

## Has all the options of the normal network and adds some wireless specific things
## like quality and network names.
##
## Note: requires both netifaces and basiciw
#status.register("wireless",
#  interface="wlan0",
#  format_up="{essid} {quality:03.0f}%",)

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
  path="/",
  format="{used}/{total}G [{avail}G]",)

# CPU (graph?)
#status.register("cpu_usage_graph")

status.register("mem_bar",
  format="^{used_mem_bar}")

status.register("network_graph",
  #format="<>{kbps}kb/s{network_graph}",
  interface="eth0")
  #interface="eth1")

status.register("network_traffic",
  interface="eth0")
  #interface="eth1")



# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("alsa",
  format="♪{volume}%")

## Shows mpd status
## Format:
## Cloud connected▶Reroute to Remain
#status.register("mpd",
#  format="{title}{status}{album}",
#  status={
#    "pause": "▷",
#    "play": "▶",
#    "stop": "◾",
#  },)

## Shows now playing status
#status.register("now_playing",
#  format="{title}{status}{artist}",
#  status={
#    "pause": "▷",
#    "play": "▶",
#    "stop": "◾",
#  },)

status.register("pomodoro",
  sound="/usr/share/webkitgtk-3.0/resources/audio/Composite.wav",
  pomodoro_duration=1500,
  break_duration=300,
  long_break_duration=900,
  short_break_count=3)

#status.register("spotify")

status.run()
