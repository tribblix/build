#!/bin/sh
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -gnu exiv2-0.25 -C --with-libiconv-prefix=/usr/gnu
${THOME}/build/genpkg TRIBexiv2 exiv2-0.25
