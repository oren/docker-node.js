# my site

# VERSION               0.0.1

FROM      ubuntu
MAINTAINER oren

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y nodejs
#ADD server.js /root/server.js

WORKDIR /root
CMD ["node", "server.js"]
