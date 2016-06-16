FROM atlassian/default-image:latest

# Installed based on https://docs.docker.com/machine/install-machine/
RUN curl -L https://github.com/docker/machine/releases/download/v0.7.0/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine
RUN chmod +x /usr/local/bin/docker-machine


# Docker installation based on https://docs.docker.com/engine/installation/linux/ubuntulinux/
RUN apt-get update
RUN apt-get install apt-transport-https ca-certificates  -y
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN echo "" > /etc/apt/sources.list.d/docker.list
RUN echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list

RUN apt-get update
RUN apt-get purge lxc-docker
RUN apt-get install docker-engine  -y

# Installs Docker-Compose based on https://docs.docker.com/compose/install/
RUN curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose


# Pulls in Remote Machine Management Gist. This allows the machine configuration, stored in machine.zip to be imported
# into the runner
# https://gist.github.com/schickling/2c48da462a7def0a577e
RUN curl -L https://gist.github.com/schickling/2c48da462a7def0a577e/archive/7b975e6dc85f8121308051fe8ddb8abdf40b7007.zip > machineMigrator.zip
RUN unzip -j machineMigrator.zip


RUN docker-machine