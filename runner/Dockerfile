FROM ubuntu:hirsute
ENV TASK_VER 'v3.15.2'
ENV TASK_ARCH 'amd64'
RUN apt-get update && apt-get install -y e2fsprogs dosfstools xxd parted udev wget curl qemu-user-static binfmt-support zerofree fdisk
RUN wget -q --show-progress --progress=bar:force:noscroll --continue -P /tmp/ https://github.com/go-task/task/releases/download/$TASK_VER/task_linux_$TASK_ARCH.tar.gz \
    && tar -C /usr/bin/ -zxf /tmp/task_linux_$TASK_ARCH.tar.gz task
CMD task -t Taskfile.yml
