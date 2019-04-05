#!/bin/bash
docker login -u="$DOCKER_USER" -p="$DOCKER_PASS";
docker push artificialindustry/serverless-python:latest;
docker push artificialindustry/serverless-python:"$RELEASE";