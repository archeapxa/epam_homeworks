#!/bin/bash

echo "Answers passed to answer_linux_task_B"

# 1.First question
echo '1. From which ip were the most requests?' > answer_linux_task_B.txt

most_ip_str=`cut -d' ' -f1 $1 | sort | uniq -c | sort -k 1 -n | tail -n 1` 
most_number=`echo $most_ip_str | cut -d' ' -f1`
most_ip=`echo $most_ip_str | cut -d' ' -f2`

echo There were $most_number requests from $most_ip >> answer_linux_task_B.txt

# 2. Second question
echo '2. What is the most requested page?' >> answer_linux_task_B.txt

most_page_str=`cat $1 | grep -Eo "/[a-zA-Z0-9./?=_%:-]*.html" | cut -d' ' -f7 | sort | uniq -c | sort -n | tail -n 1`

echo $most_page_str | cut -d' ' -f2  >> answer_linux_task_B.txt


# 3. Third question
echo '3. How many requests were there from each ip?' >> answer_linux_task_B.txt

echo 'Request IP' >> answer_linux_task_B.txt
cut -d' ' -f1 $1 | sort | uniq -c | sort -k 1 -n -r >> answer_linux_task_B.txt



# 4. Fourth question
echo '4. What non-existent pages were clients referred to?'  >> answer_linux_task_B.txt

cat $1 | grep -w '404' | cut -d' ' -f7 |  grep -Eo "/[a-zA-Z0-9./?=_%:-]*.html[a-zA-Z0-9./?=_%:-]*"  | sort | uniq >> answer_linux_task_B.txt


# 5. Fifth question
echo '5. What time did site get the most requests?' >> answer_linux_task_B.txt

echo 'Requests Time' >> answer_linux_task_B.txt
cut -d' ' -f4 $1 | cut -d\/ -f3 | cut -d: -f2,3 | sort | uniq -c | sort -k 1 -n | tail -n 10 >> answer_linux_task_B.txt