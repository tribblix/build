#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CC="gcc -m64" LDFLAGS="-lresolv -lsocket -lnsl" ${THOME}/build/dobuild HTTPing-2.9
${THOME}/build/genpkg TRIBhttping HTTPing-2.9
