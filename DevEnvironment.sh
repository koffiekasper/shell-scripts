#!/bin/bash

# This script makes it so I can type 'run' in my terminal and the project I have specified to be working on compiles & runs
# Script gets called through a .bashrc alias called 'devenv'
# Example for Python: devenv -p ~/Documents/Python/autoclicker/autoclicker.py


dir=`dirname $2`
fullpath=`readlink -f $2`

if [ $1 = "-p" ]
then
	echo Initializing Python development environment
	alias run="python3 $fullpath"
elif [ $1 = "-c" ]
then
	echo C compatability to be implemented
elif [ $1 = "-cpp" ]
then
	echo Initializing C++ development environment 
	alias run="g++ $fullpath -o $dira.out && $dira.out"
elif [ $1 = "-sh" ]
then
	echo Initializing shell script development environment
	alias run="$fullpath"
fi
