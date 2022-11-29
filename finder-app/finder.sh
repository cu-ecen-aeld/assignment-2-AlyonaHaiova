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

if ! [[ -d $1 ]];
then
	echo "First argument not directory"
	exit 1
fi
x=$(grep -R $2 $1 | wc -l)
y=$(find $1 -type f  | xargs grep -i "$2" | wc -l)

echo "The number of files are $y and the number of matching lines are $x"
  

