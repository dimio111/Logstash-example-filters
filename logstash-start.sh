#!/usr/bin/env bash

CONFIG_FILE=$1
LOGSTASH_HOME=/home/dimitri/ELK/Presentation/logstash/logstash-1.5.0/bin/logstash

if [ -n "$CONFIG_FILE" ]; then
    echo "Starting logstash with configfile $1"
    $LOGSTASH_HOME agent -f $1
else
    echo "No config file found, usage: ./logstash-start.sh Config-files/01/basic01.conf"
    exit 1
fi
