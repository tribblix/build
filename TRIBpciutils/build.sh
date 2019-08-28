#!/bin/sh
#
${THOME}/build/unpack pciutils-3.6.2
cd pciutils-3.6.2
env PATH=/usr/gnu/bin:$PATH gmake PREFIX=/usr OPT="-O2 -DBYTE_ORDER=1234 -DLITTLE_ENDIAN=1234"
# update the database
./update-pciids.sh
rm -fr /tmp/pp
env PATH=/usr/gnu/bin:$PATH gmake install PREFIX=/usr DESTDIR=/tmp/pp
${THOME}/build/create_pkg TRIBpciutils /tmp/pp
rm -fr /tmp/pp
