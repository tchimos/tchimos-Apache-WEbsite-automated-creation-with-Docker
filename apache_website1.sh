#!/bin/bash
# author : Christian Tchimi
echo 
echo
#Building the image
sudo docker build --tag website:$new_tag .
#sudo docker build -t website:$new_tag 
#sudo docker tag website $new_tag

echo
echo
#Confirming image was created
sudo docker image ls 



