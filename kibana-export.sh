#!/usr/bin/env bash

JSON_FILE=$1
URL=$2

if [ -n "JSON_FILE" ] && [ -n "$URL" ] ; then
    elasticdump --input=$URL/.kibana --output=$ --type=data --searchBody='{"filter": { "or": [ {"type": {"value": "dashboard"}}, {"type" : {"value":"visualization"}}] }}' > $JSON_FILE
else
    echo "Json file or url not found, usage: ./kibana-export.sh jsonfile.json http://localhost:9200"
fi