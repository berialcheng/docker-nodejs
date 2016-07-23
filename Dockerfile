FROM centos:7

MAINTAINER Cheng "berialcheng@gmail.com"

RUN yum install -y curl vim git && yum clean all
RUN cd /tmp \
    && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.3/install.sh | bash \
    && source ~/.bashrc \
    && nvm install v5.9.1

VOLUME ["/data"]
WORKDIR /data

EXPOSE 3000
