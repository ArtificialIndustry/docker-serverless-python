# serverless-python #

A [docker image](https://hub.docker.com/r/artificialindustry/serverless-python/) for running [serverless](https://serverless.com) commands.

This can be useful for building and deploying serverless stacks which use Python lambda 
functions from CI environments.

## Example ##

```
$ docker pull artificialindustry/serverless-python
$ docker run --rm artificialindustry/serverless-python --version
```

## Base image ##

[python:3.6-stretch](https://hub.docker.com/_/python)

Included packages from base image:

- python 3.6
- pip

## Additional packages ##

- Nodejs 8.x
- Serverless cli
- AWS cli
