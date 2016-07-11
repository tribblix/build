#!/bin/sh
#
# separate package for as (as illumos now supplies make)
# Save the old binaries like so
# (cd / ; tar cf ${THOME}/build/patches/binary-as-files.tar -I ${THOME}/build/patches/binary-as-files.txt)
#
rm -fr /tmp/as1 ; mkdir /tmp/as1
${THOME}/build/create_pkg TRIBdev-build-as /tmp/as1
rm -fr /tmp/as1
