#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Start i3 window manager
exec i3

# Set .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

