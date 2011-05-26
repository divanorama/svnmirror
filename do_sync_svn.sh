#!/bin/bash

. ./cfg.sh

LG="$WD/$1/sync.log"

echo "" >> "$LG"
echo "Start sync:" `date` >> "$LG"
(./svnsync_hack.sh "file://$WD/$1" 2>&1 || echo "!!!FAILED!!!") >> "$LG"
echo "" >> "$LG"
echo "End sync:" `date` >> "$LG"
