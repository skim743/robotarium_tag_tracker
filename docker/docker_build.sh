#!/bin/bash

(cd ../; sudo docker build --no-cache \
		  --tag robotarium:python_tag_tracker \
		  -f docker/Dockerfile .)
