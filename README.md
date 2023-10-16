# robotarium_tag_tracker
A tag tracking library for the Robotarium written in Python3!

# Building the Docker image
```
cd path/to/python_tag_tracker/docker
./docker_build.sh 192.168.1.8 1884
```

# Running the Docker image
```
cd path/to/python_tag_tracker/docker
./docker_run.sh
```

# Configuration
1. Check line 9 in 'docker_run.sh' to see if the device number matches the camera that is going to be used
2. Check line 12 and 13 in 'docker_run.sh' for the IP address and port of the MQTT server