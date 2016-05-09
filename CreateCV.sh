#!/bin/bash

#Script to create the compile Curriculum.pdf. 
# It requires docker and an standard bash command line

imageId=`docker build . | tail -n1|cut -d" " -f3` &&
docker run $imageId &&
contId=`docker ps -a | head -n2 | tail -n1 | cut -d" " -f1` &&
docker cp $contId:/src/Curriculum.pdf ./Curriculum.pdf