#!/bin/sh
###
 # @Author: jiangjin
 # @Date: 2021-09-29 14:27:53
 # @LastEditTime: 2021-09-30 16:38:48
 # @LastEditors: jiangjin
 # @Description: 
 # 
### 
 
# 拉取镜像，重新启动服务
docker login -u "$DOCKER_ACCESS_KEY" -p "$DOCKER_ACCESS_TOKEN"

docker-compose -f compose/docker-compose-dev.yml down

docker rmi -f ginlink/sheep-web:dev

docker-compose -f compose/docker-compose-dev.yml up -d
