#!/bin/sh
xrandr --newmode "1440x900_60.00"  106.50  1440 1528 1672 1904  900 903 909 934 -hsync +vsync
xrandr --addmode VGA-0 1440x900_60.00
xrandr --output VGA-0 --mode "1440x900_60.00"
setxkbmap tr