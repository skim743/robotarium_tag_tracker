FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y upgrade
RUN apt-get -y update

RUN apt-get -y install python3 python3-pip
RUN pip3 install --upgrade pip
RUN python3 -m pip install opencv-contrib-python==4.6.0.66 pyyaml==5.4.1

RUN apt-get -y install git

RUN apt-get install -y ffmpeg libsm6 libxext6 libxrender-dev

# This data changes if the master branch gets an update which forces a Docker rebuild
# Install vizier
ADD https://api.github.com/repos/robotarium/vizier/git/refs/heads/master version.json
RUN git clone https://github.com/robotarium/vizier.git
RUN python3 -m pip install vizier/

# Install the tag tracker
COPY . /robotarium_tag_tracker
RUN cd robotarium_tag_tracker && python3 -m pip install .

# Required to solve some sort of QT-related issue (see https://ubuntuforums.org/showthread.php?t=2302639)
ENV QT_X11_NO_MITSHM=1
