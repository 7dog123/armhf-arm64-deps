FROM arm64v8/ubuntu:20.04

RUN apt-get update && apt-get -y full-upgrade

RUN DEBIAN_FRONTEND=noninteractive TZ=US/Central \
    apt-get -y install --download-only libgl-dev libvulkan-dev libpulse-dev libx11-dev libxft-dev \
    libxcursor-dev libxext-dev libxfixes-dev libxi-dev libxinerama-dev libxrandr-dev \
    libxxf86vm-dev libfreetype6-dev

RUN mkdir arm64 &&  mv /var/cache/apt/archives/*.deb arm64 && \
    rm -rf /var/cache/apt/archives/*.deb && dpkg -i arm64/*.deb --instdir=usr/local


RUN dpkg --add-architecture armhf

RUN apt-get update

RUN apt-get -y install --download-only libgl-dev:armhf libvulkan-dev:armhf libpulse-dev:armhf libx11-dev:armhf libxft-dev:armhf \
    libxcursor-dev:armhf libxext-dev:armhf libxfixes-dev:armhf libxi-dev:armhf libxinerama-dev:armhf libxrandr-dev:armhf \
    libxxf86vm-dev:armhf libfreetype6-dev:armhf

RUN mkdir armhf &&  mv /var/cache/apt/archives/*.deb armhf && \
    rm -rf /var/cache/apt/archives/*.deb && dpkg -i armhf/*.deb --instdir=usr/local

