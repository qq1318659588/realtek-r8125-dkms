#!/bin/sh

apt install -y devscripts debmake debhelper build-essential dkms  pve-headers-$(uname -r)

ln -sf  /usr/src/linux-headers-$(uname -r)/   /usr/lib/modules/$(uname -r)/build

# cd dkms-driver-home ; auto build driver deb and install 
# dpkg-buildpackage -b -rfakeroot -us -uc
