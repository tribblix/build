#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
git clone https://github.com/makeworld-the-better-one/amfora
cd amfora
gmake

rm -fr /tmp/af123
mkdir -p /tmp/af123/usr/bin
cp ./amfora /tmp/af123/usr/bin
mkdir -p /tmp/af123/usr/share/applications
cp amfora.desktop /tmp/af123/usr/share/applications
mkdir -p /tmp/af123/usr/share/man/man1
cp amfora.1 /tmp/af123/usr/share/man/man1

${THOME}/build/create_pkg TRIBamfora /tmp/af123

rm -fr /tmp/af123
