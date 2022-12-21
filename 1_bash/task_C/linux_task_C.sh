#!/bin/bash

LOGFILE='/var/log/sync.log'

rsync -ah --out-format='%t %o %n' --delete $1 $2  >> $LOGFILE