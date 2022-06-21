#! /bin/bash

critical_notified="false"

# checks the Battery every 60 seconds or 1 minute
while sleep 60; do
  
  CAPACITY=$(cat /sys/class/power_supply/BAT1/capacity)
  STATUS=$(cat /sys/class/power_supply/BAT1/status)

  if [[ $critical_notified == "false" ]] && [[ $CAPACITY -le 35 ]] && [[ $STATUS == "Discharging" ]] ; then
    critical_notified=true
    dunstify -u critical "You spent too much time procrastinating!!" "Battery is low!!"
  elif [[ $critical_notified == "true" ]] && [[ $STATUS == "Charging" ]]; then
    critical_notified="false"
  elif [[ $STATUS == "Charging" ]] && [[ $CAPACITY -ge 75 ]]; then
    dunstify -u critical "Battery is full!" "You FOOL!!"
  fi

done
