# 切换当前用户到 root
sudo su

# https://docs.docker.com/compose/install/#install-compose-on-linux-systems
# 查看上述链接获取最新版本号, 目前最新: 1.25.5
curl -L https://get.daocloud.io/docker/compose/releases/download/1.25.5/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

# 增加执行权限
chmod +x /usr/local/bin/docker-compose

# 验证安装
docker-compose -v
