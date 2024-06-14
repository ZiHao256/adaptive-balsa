FROM ubuntu:20.04
## 安装编译依赖和环境
RUN apt-get update && apt-get install -y \
    wget \
    vim \
    git \
    sudo \
    gcc \
    zlib1g-dev \
    make

# 创建 balsa 用户和组
RUN groupadd -r balsa && useradd -r -g balsa balsa && \
    mkdir /home/balsa && \
    chown balsa:balsa /home/balsa

# passwd
RUN echo 'root:qazedc12' | chpasswd && \
    echo 'balsa:qazedc12' | chpasswd

# 将 balsa 用户添加到 sudoers 列表
RUN echo 'balsa ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
