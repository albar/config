#!/usr/bin/env /usr/bin/bash

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx 2>/dev/null
fi
