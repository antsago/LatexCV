#!/bin/bash

#Script to create the compile Curriculum.pdf. 
# It requires docker and an standard bash command line

imageName='latex_cv'
containerName='latex_cv_container'
docker build -t $imageName . &&
docker run --name $containerName $imageName &&
docker cp $containerName:/src/Curriculum.pdf ./Curriculum.pdf
docker rm $containerName
docker rmi $imageName