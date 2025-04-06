#!/bin/bash
# Configuração para LPIC-2 (RAID/LVM)
yum install -y lvm2 mdadm

# Cria RAID 1 com os discos extras
mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdb /dev/sdc
mkfs.ext4 /dev/md0

# Configura LVM
pvcreate /dev/md0
vgcreate vg_lpic /dev/md0
lvcreate -L 500M -n lv_data vg_lpic
mkfs.xfs /dev/vg_lpic/lv_data
