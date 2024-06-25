#!/bin/bash

directories=("/var/www" "/etc/nginx" "/home/user")
backup_location="/backup"

for dir in "${directories[@]}"
do
    echo "Backing up $dir to $backup_location..."
    # Example operation: creating a tarball for each directory
    tar -czf "$backup_location/$(basename $dir).tar.gz" "$dir"
done
