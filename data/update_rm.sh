#!/bin/bash

rm -r ./raylib_misc/

location='https://github.com/RealDoigt/raylib_misc/archive/refs/heads/'

# check if the branch argument is set
if [ -z $1 ];
then
    location="${location}main.zip"
    else
    location="$location${1}.zip"
fi

wget -O temporary.zip $location
unzip -d ./raylib_misc/ temporary.zip
rm temporary.zip