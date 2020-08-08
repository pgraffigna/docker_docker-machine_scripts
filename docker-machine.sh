#!/bin/bash

echo "++ Instalación de docker-machine ++"
repo=https://github.com/docker/machine/releases/download/v0.16.0

curl -Ls $repo/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine
sudo mv /tmp/docker-machine /usr/local/bin/docker-machine
chmod +x /usr/local/bin/docker-machine
