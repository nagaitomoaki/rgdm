# pull ubuntu 18.04 as base image
FROM ubuntu:18.04

# update packages
RUN set -x && \
    apt update && \
    apt upgrade -y

# install command
RUN set -x && \
    apt install -y wget && \
    apt install -y sudo && \
    apt install -y git && \
    apt-get install -y libsm6 libxext6 libxrender-dev

# anaconda
RUN set -x && \
    wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh && \
    bash Anaconda3-2019.10-Linux-x86_64.sh -b && \
    rm Anaconda3-2019.10-Linux-x86_64.sh

# path setteing
ENV PATH $PATH:/root/anaconda3/bin

# python library
WORKDIR /root
ADD requirements.txt /root
RUN pip install -r requirements.txt

# move to root directory
WORKDIR ../
