!#/bin/bash

#authenticate with ECR 
echo
echo
#aws ecr get-login-password --region us-east-1 | docker login --Tchimos AWS --password-stdin 915696316483.dkr.ecr.us-east-1.amazonaws.com

# creating  a repository 
echo 
echo
aws ecr create-repository \
    --repository-name docker_image1-repository \
    --image-scanning-configuration scanOnPush=true \
    --region us-east-1

#Pushing a created image to ECR
echo
echo
docker images
echo
docker tag website:latest 915696316483.dkr.ecr.us-east-1.amazonaws.com/docker_image1c-repository
echo 
docker push 915696316483.dkr.ecr.us-east-1.amazonaws.com/docker_image1-repository
