#!/bin/bash

start()
{
echo "Starting program at $(date)" # Date will be substituted

sudo docker-up # start docker

curl -sSL https://bit.ly/2ysbOFE | bash -s # download fabric

cd fabric-samples/test-network 
./network.sh down
./network.sh up createChannel # get channel started
}
start
