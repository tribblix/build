#!/bin/sh
#
# slightly hacked about to force a 64-bit build
#
${THOME}/build/unpack live.2024.02.28
cd live
cat config.linux-with-shared-libraries | sed 's:-O2:-m64 -O2 -DSOLARIS -DNEWLOCALE_NOT_USED -DNO_STD_LIB:' | sed 's:-DBSD=1 ::' > config.solaris-shared
sed -i -e 's:-o:-m64 -o:' config.solaris-shared
sed -i -e 's:-shared:-lsocket -lnsl -shared:' config.solaris-shared
./genMakefiles solaris-shared
gmake -j 4 CC=gcc
rm -fr /tmp/lls
env PATH=/usr/gnu/bin:$PATH gmake install DESTDIR=/tmp/lls PREFIX=/usr LIBDIR=/usr/lib/`${THOME}/build/getarch`
${THOME}/build/create_pkg TRIBlive555 /tmp/lls
rm -fr /tmp/lls
cd ..
