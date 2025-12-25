#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64only fuse-1.6.0 -C --enable-desktop-integration
${THOME}/build/genpkg TRIBspectrum-fuse fuse-1.6.0
