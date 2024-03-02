FROM docker.io/debian:11 

LABEL com.github.containers.toolbox="true" \
    usage="This image is meant to be used with the toolbox or distrobox command" \
    summary="Debian image for sigil dev" \
    maintainer="yukidream@mashirokuratamorfo@gmail.com"

# copy sigil lib
COPY sigil_lib /

# install package
RUN apt-get update && \ 
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install zsh build-essential git cmake libglew-dev libopenal-dev  

RUN rm -rf /tmp/* 