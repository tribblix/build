#!/bin/sh
#
# pull source, copy out the files we need
#
git clone https://github.com/lukas2511/dehydrated.git
#
# get the matching commit
#
cd dehydrated
git checkout v0.6.5
rm -fr /tmp/dhd
mkdir -p /tmp/dhd/usr/bin
mkdir -p /tmp/dhd/usr/share/man/man1
mkdir -p /tmp/dhd/usr/share/dehydrated/docs
cp dehydrated /tmp/dhd/usr/bin
cp dehydrated.1 /tmp/dhd/usr/share/man/man1
cp LICENSE README.md /tmp/dhd/usr/share/dehydrated
cp -r docs/examples /tmp/dhd/usr/share/dehydrated
cp docs/*.* /tmp/dhd/usr/share/dehydrated/docs
${THOME}/build/create_pkg TRIBdehydrated /tmp/dhd
cd ..
rm -fr /tmp/dhd
