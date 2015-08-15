#!/usr/bin/env bash

. ./export-logstash-path.sh --source-only

$LOGSTASH/bin/logstash agent -f ../Config-files/05/elasticsearch01.conf