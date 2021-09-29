#!/bin/sh
###
 # @Author: jiangjin
 # @Date: 2021-09-29 14:34:03
 # @LastEditTime: 2021-09-29 16:58:53
 # @LastEditors: jiangjin
 # @Description: 
 # 
### 

# 1.打包
yarn && yarn build

# 检查是否有DOCKER_ACCESS_KEY环境变量
# echo "--------$DOCKER_ACCESS_KEY-------------/n"

# 2.打包成docker镜像（nginx）
docker build -t sheep-web:dev .
docker tag sheep-web:dev ginlink/sheep-web:dev

# # 3.推送到dockerhub
docker login --username "$DOCKER_ACCESS_KEY" -p "$DOCKER_ACCESS_TOKEN"

docker push ginlink/sheep-web:dev