#!/bin/bash

# Get battery percentage
BATTERY_PERCENT=$(upower -i $(upower -e | grep BAT) | grep "percentage" | awk '{print $2}' | tr -d '%')

# Print only the battery percentage
echo "$BATTERY_PERCENT%"

