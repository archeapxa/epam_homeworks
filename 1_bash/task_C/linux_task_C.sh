#!/bin/bash

LOGFILE='/var/log/sync.log'

if [ $# -eq 0 ]; then
  echo "Script reques sudo and source and dest as arguments"
else 
  rsync -ah --out-format='%t %o %n' --delete $1 $2  >> $LOGFILE
fi