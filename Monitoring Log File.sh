#!/bin/bash

logfile="/var/log/myapp.log"
max_size=1000000  # 1 MB in bytes

while :
do
    # Get the current size of the log file
    size=$(wc -c < "$logfile")

    if [ $size -gt $max_size ]
    then
        echo "Log file size exceeded $max_size bytes. Rotating log..."
        # Example operation: rotate the log file
        mv "$logfile" "$logfile.$(date +'%Y%m%d%H%M%S').bak"
        # Truncate the log file to zero bytes
        > "$logfile"
    fi

    echo "Waiting for log file size to exceed $max_size bytes..."
    sleep 60  # Wait for 60 seconds before checking again
done
