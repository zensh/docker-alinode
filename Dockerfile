# DOCKER-VERSION 1.8.2

FROM centos:centos7
MAINTAINER Qing Yan <admin@zensh.com>

LABEL info.name="docker-alinode" \
      info.version="1.0.1" \
      info.description="CentOS7 with Alinode" \
      info.registry="https://hub.docker.com"

ENV PATH /root/.tnvm/versions/alinode/v1.0.1/bin:$PATH
RUN yum install -y wget git \
    && yum clean all \
    && wget -qO- https://raw.githubusercontent.com/aliyun-node/tnvm/master/install.sh | bash \
    && . /root/.bashrc \
    && tnvm install alinode-v1.0.1 \
    && tnvm use alinode-v1.0.1 \
    && npm install agentx -g
