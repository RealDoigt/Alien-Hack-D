#!/bin/bash

location='https://github.com/RealDoigt/raylib_misc/archive/refs/heads/'

# check if the branch argument is set
if [ -z $1 ];
then
    location="${location}main.zip"
    else
    location="$location$1"
fi

wget -O temporary.zip $location
