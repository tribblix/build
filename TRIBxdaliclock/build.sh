#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xdaliclock-2.44 -S X11
cd xdaliclock-2.44-64bit/X11
rm -fr /tmp/xd
mkdir -p /tmp/xd/usr/bin /tmp/xd/usr/share/man/man1
gmake install install_prefix=/tmp/xd
${THOME}/build/create_pkg TRIBxdaliclock /tmp/xd
rm -fr /tmp/xd
cd ../..
