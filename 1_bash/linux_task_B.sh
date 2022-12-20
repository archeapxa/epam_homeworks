#!/bin/bash

# 1.First question
echo '1. From which ip were the most requests?'

most_ip_str=`cut -d' ' -f1 $1 | sort | uniq -c | sort -k 1 -n | tail -n 1` 
most_number=`echo $most_ip_str | cut -d' ' -f1`
most_ip=`echo $most_ip_str | cut -d' ' -f2`

echo There were $most_number requests from $most_ip

# 2. Second question
echo '2. What is the most requested page?'

most_page_str=`cat $1 | grep -Eo "/[a-zA-Z0-9./?=_%:-]*.html" | cut -d' ' -f7 | sort | uniq -c | sort -n | tail -n 1`

echo $most_page_str | cut -d' ' -f2 


# 3. Third question
echo '3. How many requests were there from each ip?'

echo 'Request IP'
cut -d' ' -f1 $1 | sort | uniq -c | sort -k 1 -n -r



# 4. Fourth question
echo '4. What non-existent pages were clients referred to?' 

cat $1 | grep -w '404' | cut -d' ' -f7 |  grep -Eo "/[a-zA-Z0-9./?=_%:-]*.html[a-zA-Z0-9./?=_%:-]*"  | sort | uniq 