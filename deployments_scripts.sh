#!/bin/bash

servers=("server1.example.com" "server2.example.com" "server3.example.com")
deploy_script="/path/to/deploy.sh"

for server in "${servers[@]}"
do
    echo "Deploying to $server..."
    # Example operation: copying deploy script and executing it remotely
    scp $deploy_script user@$server:/tmp/
    ssh user@$server 'bash /tmp/deploy.sh'
done
