#!/bin/sh
#
# Detect dual-monitor and handle it properly for i3/bspwm wms

if [ `xrandr | grep -c ' connected '` -eq 2 ]; then # dual monitor
    xrandr --output eDP1 --auto --primary --output DP1 --auto --right-of eDP1
fi
