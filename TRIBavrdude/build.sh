#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" ${THOME}/build/cmbuild -64only https://github.com/avrdudes/avrdude.git -C "-DBUILD_SHARED_LIBS=ON -DUSE_STATIC_LIBS=OFF"
${THOME}/build/genpkg TRIBavrdude avrdude
