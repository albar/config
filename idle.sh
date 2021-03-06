#!/usr/bin/bash

killall -1 xidlehook

while pgrep -x xidlehook >/dev/null; do sleep 1; done

# Only exported variables can be used within the timer's command.
export PRIMARY_DISPLAY="$(xrandr | awk '/ primary/{print $1}')"

# Run xidlehook
xidlehook \
  `# Don't lock when there's a fullscreen application` \
  --not-when-fullscreen \
  `# Don't lock when there's audio playing` \
  --not-when-audio \
  `# Dim the screen after 60 seconds, undim if user becomes active` \
  --timer 180 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness .1' \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1' \
  `# Undim & lock after 10 more seconds` \
  --timer 240 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness .1; i3lock -i $(sh $HOME/.config/bg.sh)' \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1'
