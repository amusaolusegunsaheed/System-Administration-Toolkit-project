#!/bin/bash

monitor_log() {
    tail -f "$1" | grep --line-buffered "$2"
}

monitor_log "/var/log/syslog" "fail"
