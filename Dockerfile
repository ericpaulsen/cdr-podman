FROM codercom/enterprise-base:ubuntu

USER root

RUN apt-get update && apt-get -y upgrade

RUN source /etc/os-release && \
    echo 'deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_20.04/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list && \
    curl -fsSL "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_20.04/Release.key" | apt-key add - && \
    apt-get update && \
    apt-get -y install podman

USER coder