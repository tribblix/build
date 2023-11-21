#!/bin/sh
#

env LDFLAGS="-lsocket -lnsl" TRIBBLIX_LDFLAGS="-lsocket -lnsl" $THOME/build/cmbuild -64only exiv2-0.28.1 -C "-DEXIV2_ENABLE_INIH=OFF"

#
# SPARC needs a meson build (and patched) as it's got gcc7 which needs
# stdc++fs for experimental/filesystem and cmake doesn't do that right
#
# env TRIBBLIX_LDFLAGS="-lsocket -lnsl" $THOME/build/mesonbuild -64only exiv2-0.28.1 -C -Dcurl=disabled
#
${THOME}/build/genpkg TRIBexiv2 exiv2-0.28.1
