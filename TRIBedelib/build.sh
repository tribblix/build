#!/bin/sh
#
# desktop based on fltk
# needs jam (I used ftjam) installed
#
${THOME}/build/dobuild -64 edelib-2.1 -C --enable-shared
cd edelib-2.1-64bit
jam
cd ..
cd edelib-2.1
jam
cd ..

cd edelib-2.1-64bit
jam install DESTDIR=/tmp/el
cd ..
cd edelib-2.1
jam install DESTDIR=/tmp/el
cd ..

${THOME}/build/create_pkg TRIBedelib /tmp/el
