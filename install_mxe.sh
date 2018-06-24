#!/bin/sh

echo "Install the MXE prerequisites"
sudo apt install \
  p7zip-full \ # For 7za
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

