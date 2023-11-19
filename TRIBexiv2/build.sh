#!/bin/sh
#

env LDFLAGS="-lsocket -lnsl" TRIBBLIX_LDFLAGS="-lsocket -lnsl" $THOME/build/cmbuild -64only exiv2-0.28.1 -C "-DEXIV2_ENABLE_INIH=OFF"
${THOME}/build/genpkg TRIBexiv2 exiv2-0.28.1
