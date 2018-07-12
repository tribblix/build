#!/bin/sh
#
# we cheat a bit here, and use the prebuilt omnios files
#
# on an omnios box (or omnios alien zone):
# pkg install bhyve/brand
# cd /usr/lib/brand
# tar cf bhyve-brand.tar bhyve
#
# and then check in that file for the fixit script to unpack
#
# the only change I've made is the path to common.ksh
#
mkdir tmp1
cd tmp1
${THOME}/build/genpkg TRIBbhyve-brand
cd ..
rmdir tmp1
