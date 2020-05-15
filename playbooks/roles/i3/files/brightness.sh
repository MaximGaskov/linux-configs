#!/bin/bash
option=$1
step=$2
brightness_path="/sys/class/backlight/amdgpu_bl0/brightness"
current_brightness=$(cat $brightness_path)
case $option in
	inc)
		let current_brightness+=step
		echo $current_brightness > $brightness_path
		;;
	dec)
		let current_brightness-=step
		echo $current_brightness > $brightness_path
		;;
esac
