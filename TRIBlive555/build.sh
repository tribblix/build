#!/bin/sh
#
#
#
${THOME}/build/unpack live.2016.05.20
cd live
gsed -i 's:cc:gcc:' config.solaris-32bit 
cat config.linux-with-shared-libraries | sed 's:-O2:-O2 -DSOLARIS -DXLOCALE_NOT_USED:' | sed 's:-DBSD=1 ::' > config.solaris-shared
gsed -i -e 's:cc:gcc:' -e 's:c++:g++:' -e 's:ggcc:g++:' config.solaris-shared
gsed -i -e 's:-shared:-lsocket -lnsl -shared:' config.solaris-shared
./genMakefiles solaris-shared
gmake -j 4 CC=gcc
env PATH=/usr/gnu/bin:$PATH gmake install DESTDIR=/tmp/lls PREFIX=/usr
${THOME}/build/create_pkg TRIBlive555 /tmp/lls
