#!bin/bash

#############

#Author: Munikanth
# Date : 18-04-2023
#
# This script gives the information about health of server/machine/node

echo "print the disk space"
df -h
echo " print the free memory"
free -g
echo " print the process/cpu"
nproc

