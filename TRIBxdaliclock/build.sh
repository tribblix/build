#!/bin/sh
#
${THOME}/build/dobuild xdaliclock-2.44 -S X11
cd xdaliclock-2.44/X11
rm -fr /tmp/xd
mkdir -p /tmp/xd/usr/bin /tmp/xd/usr/share/man/man1
gmake install install_prefix=/tmp/xd
${THOME}/build/create_pkg TRIBxdaliclock /tmp/xd
rm -fr /tmp/xd
cd ../..
