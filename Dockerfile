#Image on top of which container will be built
FROM ubuntu:14.04

#get update before you install
RUN apt-get update

#install git
RUN apt-get install git wget -y

#install openjdk-7-jre
RUN apt-get install openjdk-7-jre -y

#set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-1.7.0-openjdk-amd64

#Set Working DIR
RUN cd && mkdir odl && cd odl && \

        wget https://nexus.opendaylight.org/content/groups/public/org/opendaylight/integration/distribution-karaf/0.4.0-Beryllium/distribution-karaf-0.4.0-Beryllium.tar.gz && sleep 3 && \
        tar -xvzf distribution-karaf-0.4.0-Beryllium.tar.gz
