#!/bin/bash

writefile=$1
writestr=$2
if [[ -z "$1" ]]
then
	echo "First  parameter writefile not specified"
	exit 1


elif  [[ -z "$2" ]]
then 
	echo "2nd parameter writestr not specified"
	exit 1

else
	fileDirectory=$(dirname "$1")
	echo $fileDirectory
	if [ ! -d  $fileDirectory ]
	then
		mkdir -p $fileDirectory
	fi
	echo "$2">"$1"
		
	exit 0
fi
