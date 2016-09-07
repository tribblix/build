#!/bin/sh
#
${THOME}/build/dobuild antiword-0.37
cd antiword-0.37
rm -fr /tmp/aw
gmake global_install DESTDIR=/tmp/aw GLOBAL_INSTALL_DIR=/usr/bin
rm /tmp/aw/usr/bin/kantiword
${THOME}/build/create_pkg TRIBantiword /tmp/aw
rm -fr /tmp/aw
