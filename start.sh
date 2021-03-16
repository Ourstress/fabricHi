#!/bin/bash

start()
{
curl -sSL https://bit.ly/2ysbOFE | bash -s # download fabric

cd fabric-samples/test-network 
./network.sh down
./network.sh up createChannel # get channel started
}
sudo docker-up & start # docker will be run in a separate shell from start shell function
