#!/bin/sh
#
# needs TRIBlibsdl
#
${THOME}/build/unpack openttd-1.6.1-source
cd openttd-1.6.1
./configure --prefix=/usr --without-liblzo2
gmake -j 4
rm -fr /tmp/ott
env PATH=/usr/gnu/bin:$PATH gmake install INSTALL_DIR=/tmp/ott
cd /tmp/ott
gunzip usr/share/man/man6/openttd.6.gz
mv usr/games usr/bin
cd usr/share/games/openttd/baseset
${THOME}/build/unpack opengfx-0.5.2-all
${THOME}/build/unpack openmsx-0.3.1-all
${THOME}/build/unpack opensfx-0.2.3-all
cd
${THOME}/build/create_pkg TRIBopenttd /tmp/ott
rm -fr /tmp/ott
