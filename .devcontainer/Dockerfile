FROM ubuntu:23.04

COPY .bashrc /etc/skel/.bashrc
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get update \
    && apt-get -y install \
        g++-13 \
        make \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-13 13 --slave /usr/bin/g++ g++ /usr/bin/g++-13 \
    && groupadd vscode \
    && useradd -s /bin/bash -g vscode -m vscode
ENV CXX=/usr/bin/g++
USER vscode
