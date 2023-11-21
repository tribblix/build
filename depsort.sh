#!/bin/sh
#
# check depend files are sorted for all packages
#
cd $THOME/build
for file in */depend */depend.*
do
    if ! /usr/bin/sort -c $file 2>/dev/null
    then
	echo "sort -o $file $file"
    fi
done
