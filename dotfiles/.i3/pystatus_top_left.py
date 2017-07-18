# -*- coding: utf-8 -*-

import subprocess

from i3pystatus import Status

status = Status(standalone=True)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load")

# Shows your CPU temperature, if you have a Intel CPU
status.register("temp",
    format="{temp:.0f}°C",)

# CPU (graph?)
status.register("cpu_usage_graph")

status.register("mem_bar",
    format="^{used_mem_bar}")

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
    path="/",
    format="{used}/{total}G [{avail}G]",)

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
    interface="eth1",
    #interface="eth0",
    format_up="{v4cidr}",)

## Has all the options of the normal network and adds some wireless specific things
## like quality and network names.
##
## Note: requires both netifaces and basiciw
status.register("wireless",
    interface="wlan2",
    format_up="{essid} {quality:03.0f}%",)

status.register("network_graph",
    #format="<>{kbps}kb/s{network_graph}",
    #interface="eth0")
    interface="eth1")

status.register("network_traffic",
    #interface="eth0")
    interface="eth1")


status.run()
