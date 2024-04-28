#!/bin/bash

cpuusage=$(ps aux | sort -nrk 3,3 | head -n 5)
processname=$(ps aux | sort -nrk 3,3 | head -n 5 | awk -F " " '{print $1f}')
threshold=10

while IFS= read -r line
do
    usage=$(echo "$line | awk -F " " '{print $4f}'")
    processname=$(echo "$line | awk -F " " '{print $1f}'")
    if [ $usage -g $threshold]
    then
        echo "$processname is consuming more CPU memory than $threshold. Current uage is $usage"
    fi
done <<< $cpuusage
