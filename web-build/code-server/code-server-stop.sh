#!/bin/bash 
pids=$(pgrep -f "/usr/lib/code-server")
if [ ! -z "$pids" ]; then
  kill $pids 
  echo "Killed code-server" 
fi
