#!/bin/bash 
pids=$(pgrep -f "/usr/lib/code-server")
if [ -z "$pids" ]; then
	echo "Starting code-server..."
	setsid sh -c 'code-server --bind-addr=0.0.0.0:8080 --auth=none /var/www/html > ~/code-server.log 2>&1' &
else
	echo "Already running!"
fi
