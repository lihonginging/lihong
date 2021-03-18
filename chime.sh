#!/bin/bash


min=$(date "+%M")
echo "min:" $min

if (( $min >=40 ));
then 
	echo -e '\a'
	sleep 1s
	echo -e '\a'
elif (( $min>=20 && $min<40));

then 
	echo -e '\a'
else
	echo "no chime"
fi
