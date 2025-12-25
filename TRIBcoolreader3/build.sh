#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env PATH=/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:$PATH ${THOME}/build/cmbuild +B -64only -C "-DCMAKE_PREFIX_PATH=/usr/versions/Qt-5/lib/`${THOME}/build/getarch`/cmake -DCMAKE_INSTALL_RPATH_USE_LINK_PATH=TRUE" coolreader-cr3.2.58
${THOME}/build/genpkg TRIBcoolreader3 coolreader-cr3.2.58
