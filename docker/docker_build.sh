#!/bin/bash

# if [ "$1" == "" ]; then
# 	echo "First argument should be MQTT host IP (e.g., 192.168.1.8)"
# 	exit
# fi

# if [ "$2" == "" ]; then
# 	echo "Second argument should be MQTT host port (e.g., 1884)"
# 	exit
# fi


(cd ../; sudo docker build --no-cache \
		  --tag robotarium:python_tag_tracker \
		  -f docker/Dockerfile .)
