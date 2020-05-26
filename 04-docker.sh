# https://docs.docker.com/install/linux/docker-ce/ubuntu

apt update

# 01, 卸载旧版本
apt-get remove docker docker-engine docker.io containerd runc

# 02, 使 apt 仓库支持 docker https 源
apt update
apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# 添加 docker 的官方 gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# 设置官方 docker 源
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

# 安装 docker
apt update
apt install -y docker-ce

# 验证安装结果
docker run hello-world
