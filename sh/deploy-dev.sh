###
 # @Author: jiangjin
 # @Date: 2021-09-29 11:41:09
 # @LastEditTime: 2021-09-29 15:41:53
 # @LastEditors: jiangjin
 # @Description: 
 # 
### 

# 1.添加ssh private key(为连接服务器)，并配置ssh
eval $(ssh-agent -s)
echo "$DEPLOY_KEY" > deploy.key
mkdir -p ~/.ssh
chmod 0600 deploy.key && ssh-add deploy.key
echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
ssh-add deploy.key

# 2.拷贝自动化脚本、docker compose配置文件到服务器
scp -P 19338 ./sh/server-re-deploy-dev.sh root@24t6651n59.wicp.vip:~/sh/
scp -P 19338 ./docker-compose-dev.yml root@24t6651n59.wicp.vip:~/sh/

# 3.登录服务器，并执行自动化脚本
ssh root@24t6651n59.wicp.vip -p 19338
cd sh && sh server-re-deploy-dev.sh