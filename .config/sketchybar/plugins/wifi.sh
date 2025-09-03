#!/usr/bin/env sh

# Check if Wi-Fi is powered on using networksetup
WIFI_STATUS=$(/usr/sbin/networksetup -getairportpower en0 | grep "On")

if [ -n "$WIFI_STATUS" ]; then
  # Get Wi-Fi info using wdutil
  WIFI_INFO=$(sudo /usr/bin/wdutil info 2>/dev/null)
  
  # Extract SSID
  SSID=$(echo "$WIFI_INFO" | grep "SSID" | head -1 | awk -F": " '{print $2}' | xargs)
  
  # Extract Data Rate (Mbps)
  CURR_TX=$(echo "$WIFI_INFO" | grep "Data Rate (Mbps)" | awk -F": " '{print $2}' | xargs)
  
  # Fallback if wdutil fails or no network is connected
  if [ -z "$SSID" ]; then
    SSID="Disconnected"
    CURR_TX="N/A"
  fi
else
  SSID="Disconnected"
  CURR_TX="N/A"
fi

# Update SketchyBar
if [ "$SSID" = "Disconnected" ]; then
  sketchybar --set "$NAME" label="Disconnected" icon=睊
else
  sketchybar --set "$NAME" label="$SSID (${CURR_TX}Mbps)" icon=直
fi
