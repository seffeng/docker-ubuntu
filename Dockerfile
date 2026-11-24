FROM ubuntu:resolute

LABEL author="zxf <seffeng@live.com>"

RUN \
 sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list.d/ubuntu.sources &&\
 apt-get update && apt-get install -y tzdata &&\
 cp /usr/share/zoneinfo/Asia/Shanghai /tmp/localtime &&\
 apt-get purge -y tzdata &&\
 cp /tmp/localtime /etc/localtime &&\
 apt-get clean &&\
 rm -rf /var/lib/apt/lists/* &&\
 rm -rf /var/cache/apt/* &&\
 rm -rf /tmp/*

CMD ["bash"]