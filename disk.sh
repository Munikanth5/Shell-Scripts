#!/bin/bash

# Threshold set to 80%
threshold=80
# Get the current disk usage for the root directory
usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ $usage -gt $threshold ]
then
    echo "Disk usage is above $threshold%. Current usage is $usage%." | mail -s "Disk Usage Alert" admin@example.com
else
    echo "Disk usage is below $threshold%. Current usage is $usage%."
fi
