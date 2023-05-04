FROM ubuntu:jammy

LABEL author="zxf <seffeng@live.com>"

RUN \
 sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list &&\
 sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list &&\
 sed -i 's/http:/https:/g' /etc/apt/sources.list &&\
 echo 'Asia/Shanghai' > /etc/timezone &&\
 touch /etc/localtime &&\
 apt-get update && apt-get install -y tzdata &&\
 cp /etc/localtime /etc/localtime.bak &&\
 apt-get purge -y tzdata &&\
 apt-get clean &&\
 mv /etc/localtime.bak /etc/localtime &&\
 rm -rf /var/lib/apt/lists/* &&\
 rm -rf /var/cache/apt/*

CMD ["bash"]