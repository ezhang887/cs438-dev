#!/bin/bash

set -e

echo "vagrant ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/vagrant

APT_FLAGS="-qq -y -o Dpkg::Use-Pty=0"
export DEBIAN_FRONTEND=noninteractive
apt-get $APT_FLAGS update
apt-get $APT_FLAGS upgrade
apt-get $APT_FLAGS install git openssh-server build-essential gdb valgrind iperf tcpdump wget
