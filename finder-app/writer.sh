#!/bin/bash

if (($#<2))
then
	echo "Error: Two arguments required"
	exit 1
elif (($#>2))
then
	echo "Error: Only two arguments required"
	exit 1
fi

if ! [[ -f $1 ]];
then
	(mkdir -p "$(dirname "$1")" && touch "$1") || exit 1 
fi

echo "$2" > "$1"
