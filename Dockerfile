from ubuntu:16.04

RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list

RUN apt clean \
&& dpkg --add-architecture i386 \
&& apt update \
&& apt-get -y upgrade \
&& apt-get -y install gawk git gnupg flex bison gperf build-essential \
zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
libgl1-mesa-dev g++-multilib mingw-w64 tofrodos \
python-markdown libxml2-utils xsltproc zlib1g-dev:i386

WORKDIR /usr/src/app

RUN git clone https://gitee.com/jiy/h3_lichee.git lichee

COPY . .

RUN mv ./gcc-linaro-arm.tar.xz lichee/brandy/toolchain/

RUN apt install -y u-boot-tools cpio dos2unix \
&& sed -i 's/busybox //g' lichee/tools/pack/pack