#!/usr/bin/env bash

. ./export-logstash-path.sh --source-only

$LOGSTASH/bin/logstash agent -f ../Config-files/04/repairgrokparsefailure03.conf