#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# desktop based on fltk
# needs jam (I used ftjam) installed
#
# using -64only generates absolute paths in Jamconfig that don't respect
# DESTDIR, so we fix the locations up in the fixit file
#
${THOME}/build/dobuild +64 edelib-2.1 -C --enable-shared
cd edelib-2.1-64bit
jam
jam install DESTDIR=/tmp/el
cd ..

${THOME}/build/create_pkg TRIBedelib /tmp/el
rm -fr /tmp/el
