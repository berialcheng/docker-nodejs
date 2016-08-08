FROM centos:7

MAINTAINER Cheng "berialcheng@gmail.com"

RUN yum install -y curl vim git && yum clean all
RUN cd /tmp \
    && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.3/install.sh | bash \
    && source ~/.bashrc \
    && nvm install v5.9.1 \
    && npm install -g gulp bower

VOLUME ["/data"]
WORKDIR /data

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3000
