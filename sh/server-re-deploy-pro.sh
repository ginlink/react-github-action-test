
###
 # @Author: jiangjin
 # @Date: 2021-09-29 14:27:53
 # @LastEditTime: 2021-09-29 14:43:33
 # @LastEditors: jiangjin
 # @Description: 
 # 
### 
 
# 拉取镜像，重新启动服务
docker login -u $DOCKER_ACCESS_KEY -p $DOCKER_ACCESS_TOKEN

docker rmi -f ginlink/sheep-web:latest
docker-compose -f docker-compose.pro.yml pull web
docker-compose -f docker-compose.pro.yml pull down
docker-compose -f docker-compose.pro.yml pull up -d
