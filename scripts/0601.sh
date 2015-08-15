#!/usr/bin/env bash

. ./export-logstash-path.sh --source-only

$LOGSTASH/bin/logstash agent -f ../Config-files/06/geoip01.conf