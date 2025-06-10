#!/bin/bash
brightness=$(brightnessctl get)
brightness_max=$(brightnessctl max)
brightness_percentage=$(($brightness*100/$brightness_max))
brightness_icon="🔅"

if (( $brightness_percentage > 15 && $brightness_percentage <= 30 ))
then
    brightness_icon="🔆"
elif (( brightness_percentage > 30 ))
then
    brightness_icon="☀️"
fi

# for i3blocks display
if (( $brightness_percentage <= 5 ))
then
    output="$brightness_icon $brightness_percentage%"
else
    output="$brightness_icon$brightness_percentage%"
fi

echo $output