#!/bin/bash
# Instala pacotes essenciais para LPIC-1
apt update && apt upgrade -y
apt install -y \
  lvm2 mdadm \
  apache2 mysql-server \
  tcpdump strace \
  git build-essential

# Configura usuário padrão
useradd -m -s /bin/bash lpi-user
echo "lpi-user:SenhaSegura123" | chpasswd
usermod -aG sudo lpi-user

# Habilita serviços
systemctl enable --now ssh
