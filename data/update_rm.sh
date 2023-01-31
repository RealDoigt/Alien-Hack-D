#!/bin/bash

# this deletes the raylib_misc folder to avoid having rogue files remain when a different version is pasted in
rm -r ./source/raylib_misc/

location='https://github.com/RealDoigt/raylib_misc/archive/refs/heads/'
branch='main'

# check if the branch argument is set
if [ ! -z $1 ];
then
    branch=$1
fi

location="$location${branch}.zip"

wget -O temporary.zip $location
unzip -d ./temporary/ temporary.zip
rm temporary.zip

mv ./temporary/raylib_misc-"$branch"/lib/ ./source/raylib_misc/
rm -r ./temporary/