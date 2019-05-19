FROM ubuntu

ARG PACK_VERSION

RUN apt-get update

RUN apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

RUN apt-get -y update

RUN apt-get -y install docker-ce docker-ce-cli containerd.io wget

RUN service docker start

RUN wget https://github.com/buildpack/pack/releases/download/v0.2.0/pack-v${PACK_VERSION}-linux.tgz && \
  tar xvf pack-v${PACK_VERSION}-linux.tgz && \
  mv pack /usr/local/bin/pack && \
  pack --help

ENTRYPOINT ["service", "docker", "start"]