#!/usr/bin/env bash

temp=$(cat /sys/class/thermal/thermal_zone0/temp)
temp=$((temp/1000))
echo $temp"°C"
