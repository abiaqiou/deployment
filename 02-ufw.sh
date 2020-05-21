# Uncomplicated Firewall
# https://help.ubuntu.com/community/UFW

apt-get install ufw
ufw allow 22
ufw allow 80
ufw allow 443
ufw default deny incoming
ufw default allow outgoing
ufw status verbose
ufw enable
