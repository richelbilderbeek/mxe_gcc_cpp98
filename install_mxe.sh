#!/bin/sh

echo "Install the MXE prerequisites"
sudo apt-get install \
  7za \
  autopoint \
  bison \
  flex \
  gperf \
  intltool \
  intltoolize \
  libtool \
  p7zip-full \
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

