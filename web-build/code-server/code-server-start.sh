#!/bin/bash 
pids=$(pgrep -f "/usr/lib/code-server")
if [ -z "$pids" ]; then
	echo "Starting code-server..."
	setsid sh -c 'code-server --bind-addr=0.0.0.0:8080 --auth=none /var/www/html > ~/code-server.log 2>&1' &
	if [ ! -d ~/.local/share/code-server ]; then
	# TODO: install extensions
	    code-server --install-extension eamodio.gitlens
	    code-server --install-extension devsense.phptools-vscode
	fi
else
	echo "Already running!"
fi
