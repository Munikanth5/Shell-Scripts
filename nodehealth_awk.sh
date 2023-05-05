#!bin/bash

###########

#Author : Munikanth

#Date : 18-04-2023

### This scripts gives the information about health of the system


set -x #debug mode
set -e #exit the script where there is an error
set -o  #pipefail

df -h

free -g

nproc

ps -ef | grep amazon | awk -F " " '{print $2}'
