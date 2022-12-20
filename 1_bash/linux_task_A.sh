#!/bin/bash

default_show_help () { echo "show help"; }

show_hosts () { echo "show hosts"; }

show_open_ports () { echo "show ports"; }

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
    