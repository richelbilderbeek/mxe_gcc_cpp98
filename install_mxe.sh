#!/bin/sh

apt-cache search autopoint
apt-cache search gperf
apt-cache search intltoolize
apt-cache search 7za

echo "Install the MXE prerequisites"
sudo apt install \
  7za \
  autopoint \
  bison \
  flex \
  gperf \
  libtool \
  p7zip-full \
  ruby \
  scons

echo "Clone the GitHub"
git clone https://github.com/mxe/mxe.git

echo "Add MXE to the path"
echo "export PATH=`pwd`/mxe/usr/bin:$PATH" >> ~/.bashrc

echo "Go into the MXE folder"
cd mxe

echo "Build MXE with GCC"
make gcc

echo "Build MXE with qmake"
make qt

