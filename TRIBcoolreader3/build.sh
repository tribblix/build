#!/bin/sh
#
${THOME}/build/cmbuild +B -C "-DCMAKE_PREFIX_PATH=/usr/versions/Qt-5/lib/cmake -DCMAKE_INSTALL_RPATH_USE_LINK_PATH=TRUE" coolreader-cr3.2.58
${THOME}/build/genpkg TRIBcoolreader3 coolreader-cr3.2.58
