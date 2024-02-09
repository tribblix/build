#!/bin/sh
#
mkdir s2
cd s2
#
# download the source and then run make
#
git clone https://github.com/sorintlab/stolon
cd stolon
env PATH=/usr/versions/go-1.21/bin:$PATH gmake

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/stolon/bin
cp bin/stolon* /tmp/ee/opt/tribblix/stolon/bin
cp -R doc /tmp/ee/opt/tribblix/stolon
cp README.md /tmp/ee/opt/tribblix/stolon
${THOME}/build/create_pkg TRIBblix-stolon /tmp/ee
rm -fr /tmp/ee
