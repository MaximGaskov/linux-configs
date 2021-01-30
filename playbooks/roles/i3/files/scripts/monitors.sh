#!/bin/bash
number_of_monitors=$(xrandr | grep connected | wc -l)
if [ "$number_of_monitors" -eq "2" ]
then
    name_hdmi=$(xrandr | grep connected | awk '{print $1}' | grep HDMI)
    name_laptop=$(xrandr | grep connected | awk '{print $1}' | grep -v HDMI)
    xrandr --output $name_hdmi --auto  --output $name_laptop --off
fi
