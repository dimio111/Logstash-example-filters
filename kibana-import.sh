#!/usr/bin/env bash

JSON_FILE=$1
URL=$2

if [ -n "JSON_FILE" ] && [ -n "$URL" ] ; then
    elasticdump --input=$JSON_FILE --output=$URL/.kibana --type=data
else
    echo "Json file or url not found, usage: ./kibana-import.sh jsonfile.json http://localhost:9200"
fi