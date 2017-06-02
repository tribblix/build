#!/bin/sh
#
# pull source, copy out the files we need
#
git clone https://github.com/lukas2511/dehydrated.git
rm -fr /tmp/dhd
mkdir -p /tmp/dhd/usr/bin
mkdir -p /tmp/dhd/usr/share/dehydrated
cd dehydrated
cp dehydrated /tmp/dhd/usr/bin
cp LICENSE README.md /tmp/dhd/usr/share/dehydrated
cp -r docs/examples /tmp/dhd/usr/share/dehydrated
${THOME}/build/create_pkg TRIBdehydrated /tmp/dhd
cd ..
rm -fr /tmp/dhd
