#!/bin/sh
#
#
env PATH=/usr/versions/Qt-5/bin:$PATH $THOME/build/cmbuild flameshot-12.1.0 -C -DCMAKE_INSTALL_RPATH_USE_LINK_PATH=TRUE
${THOME}/build/genpkg TRIBflameshot flameshot-12.1.0
