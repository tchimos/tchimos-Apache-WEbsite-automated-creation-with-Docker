#!/bin/bash
#Creating the container on the image 
sudo docker run --name website -p 8080:80 -d website:latest
echo
echo
#Confirming container was created 
sudo docker ps