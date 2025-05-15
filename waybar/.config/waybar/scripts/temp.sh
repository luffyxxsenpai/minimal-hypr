#!/bin/bash

STATE_FILE="/tmp/waybar_cpu_toggle"

# Function to show CPU load with icon
show_load() {
  read cpu a b c idle rest < /proc/stat
  sleep 0.5
  read cpu a2 b2 c2 idle2 rest < /proc/stat
  cpu_load=$((100 * ((a2 + b2 + c2) - (a + b + c)) / ((a2 + b2 + c2 + idle2) - (a + b + c + idle))))
  echo " ${cpu_load}%"
}

# Function to show temperatures with icons
show_temps() {
  cpu_temp=$(( $(cat /sys/class/hwmon/hwmon2/temp1_input) / 1000 ))
  gpu_temp=$(( $(cat /sys/class/hwmon/hwmon1/temp1_input) / 1000 ))
  echo " ${cpu_temp}°C  ${gpu_temp}°C"
}

# Toggle click
if [[ "$1" == "toggle" ]]; then
  if [[ -f "$STATE_FILE" ]]; then
    rm "$STATE_FILE"
  else
    touch "$STATE_FILE"
  fi
  exit 0
fi

# Output mode
if [[ -f "$STATE_FILE" ]]; then
  show_temps
else
  show_load
fi

