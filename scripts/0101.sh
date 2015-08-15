#!/usr/bin/env bash

. ./export-logstash-path.sh --source-only

$LOGSTASH/bin/logstash agent -f ../Config-files/01/basic01.conf