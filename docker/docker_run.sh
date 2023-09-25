#!/bin/bash

sudo docker run -d \
	    --name robotarium_tag_tracker \
        	-e DISPLAY=$DISPLAY \
        	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
        	--net=host \
        	--device /dev/video4:/dev/video0 \
        	robotarium:python_tag_tracker
