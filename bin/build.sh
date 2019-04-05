#!/bin/bash
if [[ -z $RELEASE ]]; then
    echo "Error: undefined RELEASE environment variable."
    exit 1
fi
docker build --build-arg RELEASE="$RELEASE" -t artificialindustry/serverless-python .
docker tag artificialindustry/serverless-python:latest artificialindustry/serverless-python:"$RELEASE"