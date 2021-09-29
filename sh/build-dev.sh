#!/bin/sh
###
 # @Author: jiangjin
 # @Date: 2021-09-29 14:34:03
 # @LastEditTime: 2021-09-29 15:35:00
 # @LastEditors: jiangjin
 # @Description: 
 # 
### 

# 1.打包
yarn && yarn build

# 2.打包成docker镜像（nginx）
docker build -t ginlink/sheep-web:dev .

# 3.推送到dockerhub
docker login -u "$DOCKER_ACCESS_KEY" -p "$DOCKER_ACCESS_TOKEN"
docker push ginlink/sheep-web:dev