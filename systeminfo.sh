#!/bin/bash

echo "Disk Space:"
df -h

echo "Memory Usage:"
free -h

echo "RAM Usage:"
cat /proc/meminfo | grep "MemTotal\|MemFree\|MemAvailable\|Buffers\|Cached"