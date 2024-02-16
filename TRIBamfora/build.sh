#!/bin/sh
#
# requires go
#
git clone https://github.com/makeworld-the-better-one/amfora
cd amfora
gmake

rm -fr /tmp/af123
mkdir -p /tmp/af123/usr/bin
cp ./amfora /tmp/af123/usr/bin
mkdir -p /tmp/af123/usr/share/applications
cp amfora.desktop /tmp/af123/usr/share/applications

${THOME}/build/create_pkg TRIBamfora /tmp/af123

rm -fr /tmp/af123
