# 腾讯云 vps

# 01, 将 pc 公钥添加到 vps 的 ssh 密钥

# 02, 使用公共 ubuntu 镜像重装系统, 登陆设置选择上一步添加的 ssh 密钥, 开始重装

# 03, 此时只能使用 ubuntu 用户登录
ssh ubuntu@<vps ip地址>

# 04, 添加 ssh 公钥到 root 用户
sudo cp /home/ubuntu/.ssh/authorized_keys /root/.ssh/authorized_keys

# 05, 编辑 sshd_config 文件, 将 PasswordAuthentication yes 修改为 PasswordAuthentication no 并取消注释
sudo nano /etc/ssh/sshd_config

# 06, 重启 ssh 服务, 应用更改
sudo service ssh restart

# 07, 退出 ssh 终端, 以 root 身份重连 vps
ssh root@<vps ip地址>

# 08, vps 上生成 ssh key
ssh-keygen -C "tencent-vps"

# 09, 将 vps 的 ssh public key 添加到项目的部署公钥中或 git 服务商账户公钥中
# 10, 拉取 deployment
cd
mkdir code
cd code
git clone git@github.com:abiaqiou/deployment.git

# 11, 克隆完成后, 使用 bash 命令执行后续 sh 文件
cd deployment
bash 02-ufw.sh
bash 03-shell.sh
bash 04-docker.sh
bash 05-docker-compose.sh
