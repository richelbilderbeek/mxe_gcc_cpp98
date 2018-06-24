#!/bin/sh

echo "Install the MXE prerequisites"

# Package name | Dependency name
# -------------|---
# p7zip-full   | 7za

# Must be one line!
sudo apt install p7zip-full autopoint gettext bison flex gperf intltool libtool p7zip-full ruby scons

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

