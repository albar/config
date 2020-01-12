#!/usr/bin/sh

echo $HOME/.config/wallpapers/$(xrandr | awk '/\*/{print $1}').png
