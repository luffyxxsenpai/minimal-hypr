#!/bin/bash

# Check if the script is run as root or with sudo
if [[ $EUID -ne 0 ]]; then
  echo "Please run as root: sudo $0"
  exit 1
fi

# Add current user to 'input' group
CURRENT_USER=$(logname)
echo "Adding $CURRENT_USER to the input group..."
gpasswd -a "$CURRENT_USER" input

# Create udev rule for uinput device
echo 'Setting udev rule for uinput device...'
echo 'KERNEL=="uinput", GROUP="input", TAG+="uaccess"' > /etc/udev/rules.d/99-input.rules

# Load uinput module immediately if not already loaded
if ! lsmod | grep -q uinput; then
  echo "Loading uinput module..."
  modprobe uinput
else
  echo "uinput module already loaded."
fi

# Ensure uinput module is loaded on boot
echo "Ensuring uinput is loaded at boot..."
echo "uinput" > /etc/modules-load.d/uinput.conf

# Final status check
echo "Checking if uinput is now loaded:"
lsmod | grep uinput && echo "✅ Setup complete. Reboot to apply all changes." || echo "⚠️ uinput not loaded."


