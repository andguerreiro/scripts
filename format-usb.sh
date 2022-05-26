#!/bin/bash
set -e

# Format usb drive partition (sda1) with ext4 file system and write permissions to "and" user
echo $'\e[1;33m'Formating usb partition...$'\e[0m'

sudo mkfs.ext4 /dev/sda1
sudo mount /dev/sda1 /mnt
sudo chown and: /mnt
sudo umount /mnt
