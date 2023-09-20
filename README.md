# python_tag_tracker
A tag tracking library written in Python3!

# Installation

```
cd path/to/python_tag_tracker
python3 -m pip install .
```

For developer mode (if you plan on changing files a lot)
```
cd path/to/python_tag_tracker
python3 -m pip install -e .
```

Docker image installation
```
cd path/to/python_tag_tracker/docker
./docker_build.sh 192.168.1.8 1884
```

Run the containerized image using
```
cd path/to/python_tag_tracker/docker
./docker_run.sh
```

# Requirements

These are the required packages/modules to run the tag tracker.

## Linux

No Linux packages explicitly required for now.  Check the Dockerfile for more info, though.

## Python

These are the required python packages.  You don't need to install OpenCV via Pip if you compiled if from source.

* numpy
* paho-mqtt
* vizier
* opencv-contrib-python

