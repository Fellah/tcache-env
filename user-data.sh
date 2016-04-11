#!/bin/bash

## Update System

apt-get update
apt-get -y upgrade

## Install Docker

apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-wily main" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get -y install docker-engine
service docker start
apt-get clean

## Manage Users

useradd \
    --create-home \
    --password PASSWORD \
    --groups docker \
    --shell /bin/bash \
    leta

mkdir --parents /home/leta/.ssh

cat <<EOT > /home/leta/.ssh/authorized_keys
PUBLIC_KEY
EOT

# Automatic start-up of systemd user instances.
loginctl enable-linger leta

useradd \
    --create-home \
    --password PASSWORD \
    --groups docker,sudo \
    --shell /bin/bash \
    fellah

mkdir --parents /home/fellah/.ssh

cat <<EOT > /home/fellah/.ssh/authorized_keys
PUBLIC_KEY
EOT

# Automatic start-up of systemd user instances.
loginctl enable-linger fellah
