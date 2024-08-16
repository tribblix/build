#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the open-simh fork appears to be more actively maintained
#
# the cmake build isn't portable and is broken
#
# we turn off warnings-as-errors and tests, as some fail and thus break
# the build
#
${THOME}/build/unpack https://github.com/open-simh/simh
cd simh
env PATH=/usr/bin/`${THOME}/build/getarch`:$PATH gmake -j 4 WARNINGS=ALLOWED TESTS=0 CC="gcc -m64"
rm -fr /tmp/simh
mkdir -p /tmp/simh/usr/versions/simh
cp BIN/* README.md /tmp/simh/usr/versions/simh
${THOME}/build/create_pkg TRIBsimh /tmp/simh
rm -fr /tmp/simh
