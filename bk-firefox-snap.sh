#!/bin/bash
set -e

# Create backup file
echo $'\e[1;33m'Creating backup file...$'\e[0m'
tar -zcvf firefox-snap.tar.gz ~/snap/firefox

# Encrypt backup file
echo $'\e[1;33m'Encrypting backup file...$'\e[0m'
gpg -c firefox-snap.tar.gz

# Remove backup file
echo $'\e[1;33m'Removing backup file...$'\e[0m'
rm firefox-snap.tar.gz
