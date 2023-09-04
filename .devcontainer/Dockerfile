FROM ubuntu:23.04

COPY .bashrc /etc/skel/.bashrc
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get update \
    && apt-get -y install \
        build-essential \
        clang-tidy-16 \
        g++-13 \
        cmake \
        cppcheck \
        gdb \
        lldb \
        llvm \
        valgrind \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-13 13 --slave /usr/bin/g++ g++ /usr/bin/g++-13 \
    && rm -rf /var/lib/apt/lists/* \
    && groupadd vscode \
    && useradd -s /bin/bash -g vscode -m vscode
USER vscode
