#!/bin/bash
awk '{ printf "%.1fW\n", $1 / 1000000 }' /sys/class/power_supply/BAT0/power_now
