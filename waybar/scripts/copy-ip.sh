#!/bin/bash

# Wifi interface
WIFI="wlp2s0"
# Ethernet interface
ETHERNET="enp5s0"

# Try to get IP from Wi-Fi interface
IP_ADDR=$(ip -4 addr show dev "$ETHERNET" | grep inet | awk '{print $2}' | cut -d/ -f1)

# If Wi-Fi IP is empty, try Ethernet
if [ -z "$IP_ADDR" ]; then
  IP_ADDR=$(ip -4 addr show dev "$WIFI" | grep inet | awk '{print $2}' | cut -d/ -f1)
fi

# If IP is found, copy it to clipboard
if [ -n "$IP_ADDR" ]; then
  echo "$IP_ADDR" | xclip -selection clipboard
else
  notify-send "Waybar" "No IP address found on $WIFI or $ETHERNET"
fi