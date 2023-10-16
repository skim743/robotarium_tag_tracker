#!/bin/bash

sudo docker run -d \
			--rm \
	    	--name robotarium_tag_tracker \
        	-e DISPLAY=$DISPLAY \
        	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
        	--net=host \
        	--device /dev/video4:/dev/video0 \
        	robotarium:python_tag_tracker \
			python3 robotarium_tag_tracker/tag_tracker/tracker.py \
			--host '192.168.1.8' \
			--port '1884' \
			--calib robotarium_tag_tracker/config/camera_calib.yml \
			--params robotarium_tag_tracker/config/detector_params.yml \
			robotarium_tag_tracker/config/node_desc_tracker.json \
			robotarium_tag_tracker/config/reference_markers_setup.yml
