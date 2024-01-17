#!/bin/bash
WATCHDOG_DEVICE=/dev/watchdog
SLEEP_DURATION=5
states=(0 1) # 1/3


while true; do
  if [ ! -e ${WATCHDOG_DEVICE} ]; then
    echo "File not found!"
    exit
  fi

  state=$(printf "%s\n" "${states[@]}" | shuf -n1)
  #echo "${state}"

  if [[ $state -eq 0 ]]; then
    echo "$(date) $(uptime -p) - ok"
    echo > ${WATCHDOG_DEVICE};
  else
    echo "$(date) $(uptime -p) - not ok"
  fi
  sleep ${SLEEP_DURATION}
done
