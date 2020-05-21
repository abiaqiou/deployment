# 01, 安装 zsh
sudo apt-get install zsh

# 02, 设置 zsh 为默认 shell
chsh -s $(which zsh)

# 03, 安装 oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
