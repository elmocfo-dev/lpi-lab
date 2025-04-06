#!/bin/bash
# Cenário: Bootloader corrompido (LPIC-1 101-3)

# 1. Remove arquivos críticos do GRUB
sudo mv /boot/grub/grub.cfg /tmp/
sudo chmod 000 /boot/grub/

# 2. Altera permissões do kernel
sudo chown root:root /boot/vmlinuz-$(uname -r)

# 3. Mensagem para o usuário
echo "💥 Cenário ativado: Sistema não bootará corretamente!"
echo "Use um LiveCD para restaurar:"
echo "1. chroot /mnt/sysroot"
echo "2. grub-install /dev/sda"
echo "3. update-grub"
