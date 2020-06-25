# Restarting Game Duel Masters (RGDM)
This is for those who want to
make application play automatically.

<img src="img/etc/title.png" alt="デュエルマスターズプレイス" title="デュエル">

# Getting Started
## Prerequisites
* Android Studio 4.0.

## Set up environment with docker
Clone repository or just copy Dockerfile and set up docker environment.

    git clone https://github.com/nagaitomoaki/rgdm.git
    cd rmgd
    sudo docker build -t rgdm .
    sudo docker run --name="rgdm_dev" -t  -i -d -p 8888:8888 rgdm /bin/bash
    sudo docker attach rgdm_dev  

## Installation in docker container

    git clone https://github.com/nagaitomoaki/rgdm.git
    cd rgdm
    jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
