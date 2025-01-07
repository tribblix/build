#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the download can't be grabbed by wget; use a browser
#
# there were missing files in ck11, restored in ck13
#
${THOME}/build/unpack mosaic27ck13
cd mosaic-ck

# Created makefiles/Makefile.illumos and edited Makefile
cp ${THOME}/build/patches/mosaic.Makefile Makefile
cp ${THOME}/build/patches/mosaic.Makefile.illumos makefiles/Makefile.illumos

# slightly abusing prereleaseflags to avoid trampling over cflags
gmake illumos prereleaseflags=-m64 ldflags=-m64
rm -fr /tmp/mmm
mkdir -p /tmp/mmm/usr/bin
cp src/Mosaic /tmp/mmm/usr/bin
${THOME}/build/create_pkg TRIBmosaic /tmp/mmm
rm -fr /tmp/mmm
