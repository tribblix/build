#!/bin/sh
#
#
env PATH=/usr/versions/Qt-6/bin:$PATH $THOME/build/cmbuild -64only flameshot-13.1.0 -C "-DCMAKE_INSTALL_RPATH_USE_LINK_PATH=TRUE -DCMAKE_PREFIX_PATH=/usr/versions/Qt-6/lib/`${THOME}/build/getarch`/cmake"
${THOME}/build/genpkg TRIBflameshot flameshot-13.1.0
