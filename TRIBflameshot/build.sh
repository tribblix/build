#!/bin/sh
#
#
env PATH=/usr/versions/Qt-5/bin`${THOME}/build/getarch`:$PATH $THOME/build/cmbuild -64only flameshot-12.1.0 -C "-DCMAKE_INSTALL_RPATH_USE_LINK_PATH=TRUE -DCMAKE_PREFIX_PATH=/usr/versions/Qt-5/lib/`${THOME}/build/getarch`/cmake"
${THOME}/build/genpkg TRIBflameshot flameshot-12.1.0
