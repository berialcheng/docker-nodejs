FROM centos:7

MAINTAINER Cheng "berialcheng@gmail.com"

# Install libpng12 for library requirement
RUN yum install -y curl vim git libpng12.x86_64 && yum clean all

RUN groupadd --gid 1000 node \
  && useradd --uid 1000 --gid node --shell /bin/bash --create-home node

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER node

RUN cd /tmp \
    && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.3/install.sh | bash \
    && source ~/.bashrc \
    && nvm install v5.9.1 \
    && npm install -g gulp bower webpack

VOLUME ["/data"]
WORKDIR /data

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3000
