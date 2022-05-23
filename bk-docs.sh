#!/bin/bash
set -e

# Create backup file
echo $'\e[1;33m'Creating backup file...$'\e[0m'
tar -zcvf Documents.tar.gz /home/and/Documents

# Encrypt backup file
echo $'\e[1;33m'Encrypting backup file...$'\e[0m'
gpg -c Documents.tar.gz


# Remove backup file
echo $'\e[1;33m'Removing backup file...$'\e[0m'
rm Documents.tar.gz
