#!/bin/bash 

###################
# Author: Pawan
# Date: 9/09/23
#
# this script outputs the node health
# 
# version:v1 
###################

set -x  # debug mode 
set -e # exit the script when there is a error except pipe failure
set -o pipefail # if there is a pipe failure scprit stops running 

df -h 

free -g

nproc

ps -ef | grep python | awk -F" " '{print $2}'

