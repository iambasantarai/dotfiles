#!/bin/bash

# user need to be root
if [ $UID -ne 0 ]; then
   echo "This script must be run as root. Please re-run with sudo."
   exit 1
fi

INTERFACE="wlp3s0"

read -p "wi-fi SSID > " SSID
read -sp "wi-fi Password > " PASSWORD

echo "Adding network configuration..."

# append the network configuration to existing wpa_supplicant.conf
WPA_CONF="/etc/wpa_supplicant/wpa_supplicant.conf"
wpa_passphrase "$SSID" "$PASSWORD" | sudo tee -a "$WPA_CONF" > /dev/null

# generate new wpa_supplicant configuration
# WPA_CONF="/etc/wpa_supplicant/wpa_supplicant_${SSID}.conf"
# wpa_passphrase "$SSID" "$PASSWORD" > "$WPA_CONF"

echo "Connecting to wi-fi..."
sudo wpa_supplicant -B -i "$INTERFACE" -c "$WPA_CONF"

if [[ $? -eq 0 ]]; then
    echo "Connected to $SSID."
else
    echo "Failed to connect to $SSID."
fi
