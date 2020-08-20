#!/bin/bash
repo=https://github.com/docker/machine/releases/download/v0.16.0

echo "++ Instalación de docker-machine ++"
curl -Ls $repo/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine
sudo mv /tmp/docker-machine /usr/local/bin/docker-machine
chmod +x /usr/local/bin/docker-machine
