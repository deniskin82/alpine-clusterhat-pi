FROM ubuntu:hirsute
ENV TASK_VER 'v3.9.2'
RUN apt-get update && apt-get install -y e2fsprogs dosfstools xxd parted udev wget curl qemu-user-static binfmt-support zerofree fdisk
RUN wget -q --show-progress --progress=bar:force:noscroll --continue -P /tmp/ https://github.com/go-task/task/releases/download/$TASK_VER/task_linux_amd64.tar.gz && tar -C /usr/bin/ -zxf /tmp/task_linux_amd64.tar.gz task
