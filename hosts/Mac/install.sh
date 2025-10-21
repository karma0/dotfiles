#!/bin/bash

echo Setting up wallpaper...

for a in bg-saved.cfg nitrogen.cfg; do
	[ -L ~/.config/nitrogen/$a ] && unlink ~/.config/nitrogen/$a
done

cat << EOF > ~/.config/nitrogen/nitrogen.cfg
[geometry]
posx=-1
posy=-1
sizex=450
sizey=500

[nitrogen]
view=icon
recurse=true
sort=alpha
icon_caps=false
dirs=/home/rlarson/images/wallpapers;
EOF

cat << EOF > ~/.config/nitrogen/bg-saved.cfg
[xin_-1]
file=/home/rlarson/images/wallpapers/luminousspheres.jpg
mode=5
bgcolor=#000000
EOF

echo "Host install completed."

exit 0
