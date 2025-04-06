#!/bin/bash
pids=$(pgrep -f "dbgpProxy")
if [ ! -z "$pids" ]; then
  kill $pids 
  echo "Killed dbgpProxy"
fi