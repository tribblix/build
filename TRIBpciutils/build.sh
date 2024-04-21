#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack pciutils-3.12.0
cd pciutils-3.12.0
env PATH=/usr/gnu/bin:$PATH gmake -j 4 CC=gcc PREFIX=/usr OPT="-m64 -O2 -DBYTE_ORDER=1234 -DLITTLE_ENDIAN=1234"
# update the database
./update-pciids.sh
rm -fr /tmp/pp
env PATH=/usr/gnu/bin:$PATH gmake install PREFIX=/usr DESTDIR=/tmp/pp
${THOME}/build/create_pkg TRIBpciutils /tmp/pp
rm -fr /tmp/pp
