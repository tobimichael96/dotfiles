#!/usr/bin/env bash

connected=$(xrandr -q | grep " connected" | cut -d ' ' -f1 | sed -n 2p)

if [ ! -z "$connected" ]; then
  sh ~/.screenlayout/withTV.sh
  sleep 1
  ~/.config/bspwm/bspwmrc
  notify-send "Screen" "Second screen added..."
else
  sh ~/.screenlayout/withoutTV.sh
  sleep 1
  ~/.config/bspwm/bspwmrc
  notify-send "Screen" "Second screen removed..."
fi
