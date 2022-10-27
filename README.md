# Docker Ubuntu

## 版本

* [jammy , 22.04 , 22.04.1 , latest](https://github.com/seffeng/docker-ubuntu/tree/22.04)

## 功能

```shell
1、修改源为：中国科学技术大学(http://mirrors.ustc.edu.cn/)

2、修改时区为：Asia/Shanghai
```

## 常用命令：

```sh
# 拉取镜像
$ docker pull seffeng/ubuntu

# 运行
$ docker run --name test -id seffeng/ubuntu

# 查看正在运行的容器
$ docker ps

# 停止
$ docker stop [CONTAINER ID | NAMES]

# 启动
$ docker start [CONTAINER ID | NAMES]

# 进入终端
$ docker exec -it [CONTAINER ID | NAMES] sh

# 删除容器
$ docker rm [CONTAINER ID | NAMES]

# 镜像列表查看
$ docker images

# 删除镜像
$ docker rmi [IMAGE ID]

# 构建镜像
$ docker build -t [IMAGE NAME] .

# 复制本机文件到容器
$ docker cp /root/file [CONTAINER ID]:/root/file

# 复制容器文件到本机
$ docker cp [CONTAINER ID]:/root/file /root/file
```

## 网络

```shell
# 查看网络
$ docker network ls

# 创建网络
$ docker network create [NAME]
```
