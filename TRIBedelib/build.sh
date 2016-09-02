#!/bin/sh
#
# desktop based on fltk
# needs jam (I used ftjam) installed
#
${THOME}/build/dobuild edelib-2.1 -C --enable-shared
cd edelib-2.1
jam
jam install DESTDIR=/tmp/el
${THOME}/build/create_pkg TRIBedelib /tmp/el
