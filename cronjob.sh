#!/bin/bash

apikey='' # API key (e.g. X8AOlxkFLIjPZnDErxRc1T3)
domain='' # Domain (e.g. example.com)
record='' # Record (XXXXXX in https://www.gandi.net/admin/domain/zone/XXXXXX/N/edit)

./gandi-dyndns --api=$apikey --domain=$domain --record=$record
