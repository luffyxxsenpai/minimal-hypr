#!/bin/bash
# Reads GPU temp from AMD GPU (amdgpu)
temp=$(cat /sys/class/hwmon/hwmon1/temp1_input)
echo "GPU: $((temp / 1000))°C"

