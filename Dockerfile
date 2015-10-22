FROM centos:latest

MAINTAINER Cheng "berialcheng@gmail.com"

RUN yum install -y vim git
RUN cd /tmp && curl -O http://nodejs.org/dist/v0.12.7/node-v0.12.7-linux-x64.tar.gz && tar -xvf node-v0.12.7-linux-x64.tar.gz && mv node-v0.12.7-linux-x64 /opt/ && ln -s /opt/node-v0.12.7-linux-x64 /opt/node && ln -s /opt/node/bin/node /usr/bin/node && ln -s /opt/node/bin/npm /usr/bin/npm
