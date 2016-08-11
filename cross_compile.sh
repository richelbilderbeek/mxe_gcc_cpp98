#!/bin/sh

#Don't put the full path here. It has to be found in the 
# In /home/yourusername/.bashrc add the following line add the end instead:
# export PATH=$PATH:/home/richel/GitHubs/ProjectRichelBilderbeek/Libraries/mxe/usr/bin/
my_gcc="i686-w64-mingw32.static-g++"
my_folder="travis_gcc_cpp98"

echo "Displaying cross compiler version (if it is not found, set the path to YourFolder/mxe/usr/bin"
$my_gcc -v

cd $my_folder
$my_gcc main.cpp -o $my_folder

if [ ! -e ./release/$my_folder".exe" ]
then
  echo "FAIL (executable not found)"
  return 1
fi

