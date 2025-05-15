#!/bin/bash
# Reads CPU temp from k10temp (Tctl)
temp=$(cat /sys/class/hwmon/hwmon2/temp1_input)
echo "CPU: $((temp / 1000))°C"

