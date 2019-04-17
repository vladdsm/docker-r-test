# docker-r-test

R scripts running inside container - concept definition

# Description

This repository deals with an exploration of usage of docker containers to run R scripts.

This docker file is using previously built image tmlts/docker-r-base. It is embeds an R script that suppose to be executed. Typical use case is explored:

- data input
- processing of algorithm in the container
- result output
- container can be activated either by double-clicking to the script or using cron
- TDL define easy process to package any other R script into container

# Details

## Create this image

Execute this command while being in the Dockerfile directory:

`docker build tmlts/docker-r-test .`

## Run the container with a Terminal

This command runs the container and mapping folders to the R process

`docker run --rm -v /Users/testmachine/Documents/GitHub/docker-r-test/01_data:/01_data -v /Users/testmachine/Documents/GitHub/docker-r-test/03_output:/03_output tmlts/docker-r-test`

Expected output should be written in the folder 03_output

## Run this container using shell script

Dedicated shell script was created run_container

Created by executing the command from the terminal:

`chmod +x 'run_container'`

