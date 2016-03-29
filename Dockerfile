FROM centos:latest

MAINTAINER Cheng "berialcheng@gmail.com"

RUN yum install -y vim git && yum clean all
RUN cd /tmp && curl -O http://nodejs.org/dist/v4.4.1/node-v4.4.1.tar.gz && tar -xvf node-v4.4.1.tar.gz && mv node-v4.4.1 /opt/ && ln -s /opt/node-v4.4.1 /opt/node && ln -s /opt/node/bin/node /usr/bin/node && ln -s /opt/node/bin/npm /usr/bin/npm && rm /tmp/node-v4.4.1.tar.gz
