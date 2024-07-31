#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we cheated a bit here, and used the prebuilt omnios files
#
# on an omnios box (or omnios alien zone):
# pkg install bhyve/brand
# cd /usr/lib/brand/bhyve
#
# and then check in the files from there for the fixit script to put
# in the package
#
# this has been modified since the initial copy
# createzone has a modified path to common.ksh
# init has been heavily modified to add cloud-init and virtfs and rng
# and priv.debug
#
mkdir tmp1
cd tmp1
${THOME}/build/genpkg TRIBbhyve-brand
cd ..
rmdir tmp1
