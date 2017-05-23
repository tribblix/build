#!/bin/sh
#
# the 0.26 tarball is called exiv2-0.26-trunk but unpacks into exiv2-trunk
# so rename the tarball
# mv exiv2-0.26-trunk.tar.gz exiv2-trunk.tar.gz
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -gnu exiv2-trunk -C --with-libiconv-prefix=/usr/gnu
${THOME}/build/genpkg TRIBexiv2 exiv2-trunk
