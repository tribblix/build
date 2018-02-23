#!/bin/sh
#
# pull source, copy out the files we need
#
git clone https://github.com/lukas2511/dehydrated.git
#
# this is the commit for 0.5.0
#
cd dehydrated
git checkout  4a811759dc18fb1e08df0020060956da355abb9e
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
