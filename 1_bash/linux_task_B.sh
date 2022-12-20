#!/bin/bash

# 1.First question
echo '1. From which ip were the most requests?'

most_ip_str=`cut -d' ' -f1 $1 | sort | uniq -c | sort -k 1 -n | tail -n 1` 
most_number=`echo $most_ip_str | cut -d' ' -f1`
most_ip=`echo $most_ip_str | cut -d' ' -f2`

echo There were $most_number requests from $most_ip

