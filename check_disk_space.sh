#!/bin/bash

check_disk_space() {
    local threshold=10
    local usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')


    if [ "$usage" -ge "$threshold" ]; then
        echo "Disk usage has exceeded the threshold: $usage%"
        echo "Disk Space Alert sent to ope@bankole.com"
    fi
}

check_disk_space
