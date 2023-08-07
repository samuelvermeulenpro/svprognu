#!/bin/bash

set -e

# Mise à jour du système actuel
apt -y update
apt -y upgrade
apt -y --purge autoremove
#apt-mark unhold

# Backup du dépot actuel
cp -v /etc/apt/sources.list /etc/apt/sources.list.backup_debian11

# Migration vers le nouveau  dépot
sed -i 's/bullseye/bookworm/g' /etc/apt/sources.list

# Upgrade
apt update
apt -y full-upgrade

exit 0