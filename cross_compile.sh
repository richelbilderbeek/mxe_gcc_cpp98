#!/bin/sh

export PATH=`pwd`/mxe/usr/bin:$PATH
my_gcc="i686-w64-mingw32.static-g++"
my_folder="travis_gcc_cpp98"
my_exe=$my_folder # Note: no .exe added

echo "Displaying cross compiler version (if it is not found, set the path to YourFolder/mxe/usr/bin"
$my_gcc -v

cd $my_folder
$my_gcc main.cpp -o $my_folder

if [ ! -e $my_exe ]
then
  echo "FAIL (executable not found)"
  echo $my_exe
  return 1
fi

