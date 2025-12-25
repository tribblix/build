#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we cheat a bit here, and use the prebuilt omnios files
#
# on an omnios box (or omnios alien zone):
# pkg install system/bhyve/firmware
# cd /
# tar cf bhyve-fw.tar usr/share/bhyve/firmware
#
# and then check in that file for the fixit script to unpack
#
mkdir tmp1
cd tmp1
${THOME}/build/genpkg TRIBsys-bhyve-firmware
cd ..
rmdir tmp1
