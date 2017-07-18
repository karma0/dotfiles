# -*- coding: utf-8 -*-

from multiprocessing import cpu_count

from i3pystatus import Status

from keyring.backends.SecretService import Keyring

status = Status(standalone=True)

status.register('backlight',
  format='*{percentage}',
  backlight='intel_backlight'
  )

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM W31
#                          ^-- calendar week
status.register("clock",
  format="%a %-d %b %X W%V",)

status.register("mem_bar",
  format="^{used_mem_bar}")

# The battery monitor has many formatting options, see README for details

# This would look like this, when discharging (or charging)
# ↓14.22W 56.15% [77.81%] 2h:41m
# And like this if full:
# =14.22W 100.0% [91.21%]
#
# This would also display a desktop notification (via dbus) if the percentage
# goes below 5 percent while discharging. The block will also color RED.
status.register("battery",
  battery_ident="BAT0",
  #format="{status}/{consumption:.2f}W {percentage:.2f}% [{percentage_design:.2f}%] {remaining:%E%hh:%Mm}",
  format="{status}/{percentage:.2f}% {remaining:%E%hh:%Mm}",
  alert=True,
  alert_percentage=5,
  status={
    "DIS": "↓",
    "CHR": "↑",
    "FULL": "=",
  },)

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

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load")

# Shows your CPU temperature, if you have a Intel CPU
status.register("temp",
  file="/sys/class/hwmon/hwmon0/temp1_input",
  format="{temp:.0f}°C",
  )

# CPU (graph)
fmt_str = "{cpu_graph}:"

for c in range(cpu_count()):
    fmt_str += "{usage_cpu"+str(c)+":02},"

fmt_str = fmt_str[:-1]
status.register("cpu_usage_graph",
  format=fmt_str,
  #format_all="{core}:{usage:02}%",
)

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
  path="/",
  format="{used}/{total}G [{avail}G]",)

#status.register("network_graph",
#  #format="<>{kbps}kb/s{network_graph}",
#  interface="wlp2s0")
#
#status.register("network_traffic",
#  interface="wlp2s0")


# Displays whether a DHCP client is running
status.register("runwatch",
  name="DHCP",
  path="/run/dhcpcd-*.pid",)

# Shows the address and up/down state of enp0s25. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (enp0s25) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces
#status.register("network",
#  interface="enp0s25",
#  format_up="{v4cidr}",)

## Has all the options of the normal network and adds some wireless specific things
## like quality and network names.
##
## Note: requires both netifaces and basiciw
status.register("network",
  interface="wlp2s0",
  format_up="{essid} {quality:03.0f}% {network_graph}",)

## Displays the weather like this:
##
#status.register("weather",
#  location_code="80203",
#  format="Denver {current_temp}",
#  units="imperial",
#  interval=300)


# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("alsa",
  card=1,
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

# Shows now playing status
status.register("now_playing",
  format="{title}{status}{artist}",
  status={
    "pause": "▷",
    "play": "▶",
    "stop": "◾",
  },)

status.register("pomodoro",
  sound="/usr/share/webkitgtk-3.0/resources/audio/Composite.wav",
  pomodoro_duration=1500,
  break_duration=300,
  long_break_duration=900,
  short_break_count=3)

#status.register("spotify")

#status.register('github', keyring_backend=Keyring())

#status.register('pacman')

status.run()
