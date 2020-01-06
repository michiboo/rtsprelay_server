FROM ubuntu:latest
RUN apt-get update
RUN apt-get install gcc -y
RUN apt-get install build-essential -y
RUN apt-get install libgstrtspserver-1.0-dev gstreamer1.0-rtsp -y
RUN apt-get install libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio -y
RUN apt-get install gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly -y
RUN apt-get install gstreamer1.0-libav -y
RUN apt-get install iputils-ping -y
RUN mkdir server
WORKDIR ${PWD}/server
ADD . .
RUN make