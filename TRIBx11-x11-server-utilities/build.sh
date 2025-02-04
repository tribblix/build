#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a merged package, which supplies what OI
# used to in prehistoric times
#
# except for dispswitch, which has been split out
#

#
# SPARC needs
#  env XORG_LIBS=-L/usr/lib/sparcv9 XORG_CFLAGS=-I/usr/openwin/server/include
# for rgb (as it's missing the xorg.pc file)
#

${THOME}/build/dobuild -64only rgb-1.1.0 -C "--with-rgb-db-dir=/usr/lib/X11/rgb --with-rgb-db-type=ndbm"
${THOME}/build/dobuild -64only xcmsdb-1.0.7
${THOME}/build/dobuild -64only xgamma-1.0.7
${THOME}/build/dobuild -64only xhost-1.0.10
${THOME}/build/dobuild -64only xinput-1.6.4
${THOME}/build/dobuild -64only xmodmap-1.0.11
${THOME}/build/dobuild -64only xprop-1.2.7
${THOME}/build/dobuild -64only xrandr-1.5.3
${THOME}/build/dobuild -64only xrdb-1.2.2
${THOME}/build/dobuild -64only xrefresh-1.1.0
${THOME}/build/dobuild -64only xset-1.2.5
${THOME}/build/dobuild -64only xsetroot-1.1.3

#
# xmakemap installed by the fixit script
#

${THOME}/build/genpkg TRIBx11-x11-server-utilities rgb-1.1.0 xcmsdb-1.0.7 xgamma-1.0.7 xhost-1.0.10 xinput-1.6.4 xmodmap-1.0.11 xprop-1.2.7 xrandr-1.5.3 xrdb-1.2.2 xrefresh-1.1.0 xset-1.2.5 xsetroot-1.1.3
