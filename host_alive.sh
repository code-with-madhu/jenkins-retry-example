#!/bin/bash
# The script checks whether a host is online or not every 5 seconds. When the host goes online, the script will notify you and stop.
while :
do
  if ping -c 1 hostname  &> /dev/null
  then
    echo "Host is online"
    break
  fi
  sleep 2
done
