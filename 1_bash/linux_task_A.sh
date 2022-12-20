#!/bin/bash

default_show_help () { echo "show help"; }

show_hosts () { 
  nmap -sn -oG temp 192.168.0.0/24 >> /dev/null
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
    