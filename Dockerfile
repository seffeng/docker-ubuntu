FROM ubuntu:resolute

LABEL author="zxf <seffeng@live.com>"

RUN \
 sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list.d/ubuntu.sources &&\
 echo 'Asia/Shanghai' > /etc/timezone &&\
 apt-get update && apt-get install -y tzdata &&\
 apt-get purge -y tzdata &&\
 apt-get clean &&\
 ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
 rm -rf /var/lib/apt/lists/* &&\
 rm -rf /var/cache/apt/*

CMD ["bash"]