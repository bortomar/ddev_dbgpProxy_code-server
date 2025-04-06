#!/bin/bash
pids=$(pgrep -f "dbgpProxy")
if [ -z "$pids" ]; then
	setsid sh -c 'dbgpProxy -i 0.0.0.0:9001 -s 0.0.0.0:9004 > ~/dbgp-proxy.log 2>&1' &
	echo "Starting dbgpProxy..."
else
	echo "Already running!"
fi