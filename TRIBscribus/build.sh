#!/bin/sh
#
env PATH=/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:$PATH $THOME/build/cmbuild -64only scribus-1.6.1 -C "-DCMAKE_PREFIX_PATH=/usr/versions/Qt-5/lib/`${THOME}/build/getarch`/cmake -DWANT_CPP17=ON"

${THOME}/build/genpkg TRIBscribus scribus-1.6.1
