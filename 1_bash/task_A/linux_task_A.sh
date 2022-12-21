#!/bin/bash

default_show_help () { 
  echo 'Choose parameter'
	echo '--all	key - displays the IP addresses and symbolic names(if any) of all hosts in the current subnet'
	echo '--target key - displays a list of open system TCP ports'
  echo 'Scans needs nmap and netstat tools to be installed'
}

show_hosts () { 
  network=`ip addr show $(ip route | awk '/default/ { print $5 }') | grep "inet" | head -n 1 | awk '/inet/ {print $2}' | cut -d'/' -f1 | cut -d'.' -f1,2,3`
  nmap -sn -oG temp ${network}.0/24 >> /dev/null
  sed -i '1d' temp
  sed -i '$d' temp
  cat temp
  rm temp
}

show_open_ports () { netstat -tln | grep LISTEN; }

if [ $# -eq 0 ]; then
  default_show_help;
else
  case $1 in
    "--all")
      show_hosts;;
    "--target")
      show_open_ports;;
    *)
      default_show_help;;
  esac
fi
    