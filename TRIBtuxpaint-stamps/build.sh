#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# just a Makefile, set variables to bypass its settings
#
$THOME/build/unpack tuxpaint-stamps-2023.05.19
cd tuxpaint-stamps-2023.05.19

rm -fr /tmp/txps
# needs the trailing /
gmake install-all DATA_PREFIX=/tmp/txps/usr/share/tuxpaint/

${THOME}/build/create_pkg TRIBtuxpaint-stamps /tmp/txps
rm -fr /tmp/txps
