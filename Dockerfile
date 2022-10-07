FROM arm64v8/ubuntu:20.04

RUN apt-get update

RUN apt-get -y install libgl-dev libvulkan-dev libpulse-dev libx11-dev libxft-dev \
    libxcursor-dev libxext-dev libxfixes-dev libxi-dev libxinerama-dev libxrandr-dev \
    libxxf86vm-dev libfreetype6-dev

RUN dpkg --add-architecture armhf

RUN apt-get update

RUN apt-get -y install libgl-dev:armhf libvulkan-dev:armhf libpulse-dev:armhf libx11-dev:armhf libxft-dev:armhf \
    libxcursor-dev:armhf libxext-dev:armhf libxfixes-dev:armhf libxi-dev:armhf libxinerama-dev:armhf libxrandr-dev:armhf \
    libxxf86vm-dev:armhf libfreetype6-dev:armhf
