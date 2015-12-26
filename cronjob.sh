#!/bin/bash

basedir=`dirname $0`

apikey='' # API key (e.g. X8AOlxkFLIjPZnDErxRc1T3)
domain='' # Domain (e.g. example.com)
record='' # Record (e.g. @)

python2 "$basedir/gandi-dyndns" --api=$apikey --domain=$domain --record=$record --cache --cache-file="$basedir/cache.json" | tee "$basedir/cronjob.log"
