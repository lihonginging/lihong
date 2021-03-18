#!/bin/bash

files=`pwd`
if [ ! -n "$1" ];then
	echo "Warning! No arguments, return the oldest filename of current directory"
	find $files |xargs ls -rt | head -n 1 |sed 's#.*/##'
elif [ ! -n "$2" ];then
	find -name $1 |xargs ls -rt | head -n 1 |sed 's#.*/##'
elif [ ! -n "$3" ];then
	find -name $1 -or -name $2 |xargs ls -rt | head -n 1 |sed 's#.*/##'
else
	find -name $1 -or -name $2 -or -name $3 |xargs ls -rt | head -n 1 |sed 's#.*/##'
fi

