FROM python:3.6-stretch

LABEL maintainer="Artificial Industry Data Team<team-data@artificialindustry.com>"

ARG RELEASE

# Install aws cli
RUN pip install awscli

# Install node.js
RUN curl -sL https://deb.nodesource.com/setup_8.x > node_install.sh
RUN chmod +x ./node_install.sh
RUN ./node_install.sh
RUN apt-get update
RUN apt-get install -y apt-utils nodejs

# Install serverless
RUN npm i -g serverless

COPY bin/startup.sh .
RUN "./startup.sh"

ENTRYPOINT [ "/bin/sh" ]
