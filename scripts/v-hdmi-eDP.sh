#!/bin/sh
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 320x1440 --rotate normal \
        --output HDMI-1-0 --mode 2560x1440 --rate 74.97 --pos 0x0 --rotate normal \
        --output DP-1-0 --off \
        --output DP-1-1 --off \
        --output DP-1-2 --off \
        --output DP-1-3 --off

if command -V nitrogen &> /dev/null
then
    nitrogen --restore
fi
