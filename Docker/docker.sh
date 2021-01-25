#!/bin/bash

echo Instalación de la ultima versión de Docker
sleep 1s
cd /
sleep 1s
sudo apt-get update
sudo apt install curl -y
sudo apt update
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh 
sleep 2s
echo Docker esta Instalado
sleep 1s
echo Se instalara docker-compose
sleep 1s
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sleep 1s
echo Docker-Compose Instalado
sleep 1s
cd /
