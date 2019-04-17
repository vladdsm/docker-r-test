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