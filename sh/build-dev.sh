#!/bin/sh
###
 # @Author: jiangjin
 # @Date: 2021-09-29 14:34:03
 # @LastEditTime: 2021-09-29 16:17:29
 # @LastEditors: jiangjin
 # @Description: 
 # 
### 

# 1.打包
yarn && yarn build

# 2.打包成docker镜像（nginx）
docker build -t sheep-web:dev .
docker tag sheep-web:dev ginlink/sheep-web:dev

# 3.推送到dockerhub
echo "$DOCKER_ACCESS_TOKEN" | docker login -u "$DOCKER_ACCESS_KEY" --password-stdin

echo "$DOCKER_ACCESS_TOKEN" | docker login -u "$DOCKER_ACCESS_KEY" --password-stdin

docker push ginlink/sheep-web:dev