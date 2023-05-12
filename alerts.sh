###########
#Author: XXXX
#date: xxx
#############
#This script gives the information xxxx

#!/bin/bash
while true
do
  if [ $(free -m | awk 'NR==2{printf "%d\n", $3*100/$2}') -gt 80 ]
  then
    echo "Memory usage is above 80%"
    # Send an alert email or take other action
  fi
  sleep 5m
done
