Run ODL in Docker container
===========================

This document is intended to guide you to install odl in a docker container.

Install Docker
==============

make sure you have curl installed

if it is not installed then

  sudo apt-get install curl

Install docker

  curl -sSL https://get.docker.com/ | sh

Test Docker

 sudo docker run hello-world

Build a ubuntu container
++++++++++++++++++++++++

Docker container can be build from Dockerfile

Create a dir:

        mkdir odl && cd odl

copy the Docker file from

       https://github.com/manjeetbhatia/Docker_ODL/blob/master/Dockerfile 


Build a docker container:

       sudo docker build -t test_odl .

It will take some time to build that container and once you have that built just run it.

       sudo docker run -itd -p <your host ip>:8181 test_odl /bin/bash

       sudo docker ps -a

copy the container id of container running image odl

      sudo docker exec -it <containerid> bash

Start ODL

     once you're in container run
     cd && cd odl/distribution-x-x 
     ./bin/start
     ./client -u karaf
     feature:install odl-l2switch-switch
     feature: install odl-dlux-all

Then you can check if its really working

     curl http://<dockercontainer ip>:8181/index.html
     curl http://<hostip>:8181/index.html 

You can also commit that container which will save a new image will all the odl stuff
and which can be copied to any other system and launched
