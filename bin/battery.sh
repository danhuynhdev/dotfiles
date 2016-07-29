#!/bin/bash
while true
do
    [[ $(acpi -b | grep -o "Discharging") ]] && notify-send "Alert" "Battery is not charging.\n Please plug your AC adapter!" && espeak "battery dicharging. Plugin please!"
    sleep 5 # 300 seconds or 5 minutes
done
