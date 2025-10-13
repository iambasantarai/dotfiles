#!/bin/sh

set -e

# Memory threshold in kB (1 GB)
threshold_kb=1048576

# Interval in seconds between checks
interval=10

# Infinite loop to check memory
while true; do
    available_kb=$(grep MemAvailable /proc/meminfo | sed 's/[^0-9]*\([0-9]*\).*/\1/')

    if [ "$available_kb" -lt "$threshold_kb" ]; then
        paplay --device=alsa_output.pci-0000_00_1f.3.analog-stereo ~/dotfiles/sounds/scream.wav
    fi

    sleep "$interval"
done
