#!/bin/sh

xrandr --newmode 1920x1080 173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync 2>/dev/null
xrandr --newmode 1600x900 118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync 2>/dev/null
xrandr --newmode 1536x864  109.25  1536 1624 1784 2032  864 867 872 897 -hsync +vsync 2>/dev/null

xrandr --addmode eDP1 1920x1080 2>/dev/null
xrandr --addmode eDP1 1600x900 2>/dev/null
xrandr --addmode eDP1 1536x864 2>/dev/null

xrandr --output eDP1 --mode 1536x864 --dpi 96 2>/dev/null

