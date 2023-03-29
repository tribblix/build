#!/bin/sh
#

env LDFLAGS="-lsocket -lnsl" TRIBBLIX_LDFLAGS="-lsocket -lnsl" $THOME/build/cmbuild -64 exiv2-0.27.3-Source
${THOME}/build/genpkg TRIBexiv2 exiv2-0.27.3-Source
