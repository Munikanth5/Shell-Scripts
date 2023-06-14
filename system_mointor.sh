#!/bin/bash

echo "Disk Space:"
df -h

echo "Memory Usage:"
free -h

echo "RAM Usage:"
cat /proc/meminfo | grep "MemTotal\|MemFree\|MemAvailable\|Buffers\|Cached"

ubuntu@ip-10-20-3-174:/etc/ansible$ cat system_mointor.sh 
#!/bin/bash

# Get CPU usage percentage
cpu_usage=$(top -bn1 | awk '/^%Cpu/{print $2}')

# Get memory usage percentage
memory_usage=$(free | awk '/Mem/{print $3/$2 * 100.0}')

echo "CPU Usage: $cpu_usage%"
echo "Memory Usage: $memory_usage%"