#!/bin/sh

apt-get install apt-transport-https dirmngr
echo 'deb https://apt.dockerproject.org/repo debian-stretch main' >> /etc/apt/sources.list
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
apt-get update
apt-get install docker-engine -y
docker pull debian:stretch
docker network create --subnet 172.99.1.0/24 Git_Net
docker build -t gitserver --file gitDockerfile .
docker run --network Git_Net -p 22:22 -td gitserver:latest 
docker build --network Git_Net -t apacheserver --file ApacheDockerfile .
docker run --network Git_Net -td -p 443:443 apacheserver:latest 

