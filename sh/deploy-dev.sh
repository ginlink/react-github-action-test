###
 # @Author: jiangjin
 # @Date: 2021-09-29 11:41:09
 # @LastEditTime: 2021-09-29 14:45:37
 # @LastEditors: jiangjin
 # @Description: 
 # 
### 

# 1.添加ssh private key(为连接服务器)，并配置ssh
eval $(ssh-agent -s)
echo ${secrets.DEPLOY_KEY} > deploy.key
mkdir -p ~/.ssh
chmod 0600 deploy.key && ssh-add deploy.key
echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config

# 2.拷贝自动化脚本、docker compose配置文件到服务器
# scp ./sh/server-re-deploy-dev.sh root@

# 3.登录服务器，并执行自动化脚本