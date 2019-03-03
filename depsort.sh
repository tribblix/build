#!/bin/sh
#
# check depend files are sorted for all packages
#
cd $THOME/build
for file in */depend
do
    if ! /usr/xpg4/bin/sort -c $file
    then
	echo "sort -o $file $file"
    fi
done
