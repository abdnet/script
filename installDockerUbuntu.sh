#!/bin/bash

apt-get update
apt-get install -y apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' > /etc/apt/sources.list.d/docker.list

apt-get update

apt-get purge lxc-docker

apt-cache policy docker-engine

apt-get update

apt-get upgrade -y

apt-get install -y linux-image-extra-$(uname -r)

apt-get install -y docker-engine

echo " Fin de l'instalation .. "
echo "Docker start .."
service docker start
#echo "Installation de l'image spark notebook"
#:docker run -it --rm -p 8888:8888 jupyter/all-spark-notebook

