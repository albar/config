#!/usr/bin/env sh

killall -1 polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

echo run polybar
polybar top 
#& polybar bottom
