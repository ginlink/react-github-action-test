#!/bin/sh
###
 # @Author: jiangjin
 # @Date: 2021-09-29 14:34:03
 # @LastEditTime: 2021-09-29 16:55:10
 # @LastEditors: jiangjin
 # @Description: 
 # 
### 

# 1.打包
# yarn && yarn build

# echo "$DOCKER_ACCESS_TOKEN" | docker login --username "$DOCKER_ACCESS_KEY" --password-stdin

# docker login --username "ginlink" -p 'da44ef14-406b-46a6-a102-5d6dbf0509e0'
echo "--------$secrets-------------/n"



# docker login --username "$DOCKER_ACCESS_KEY" -p "$DOCKER_ACCESS_TOKEN"

# 2.打包成docker镜像（nginx）
# docker build -t sheep-web:dev .
# docker tag sheep-web:dev ginlink/sheep-web:dev

# # 3.推送到dockerhub

# docker push ginlink/sheep-web:dev