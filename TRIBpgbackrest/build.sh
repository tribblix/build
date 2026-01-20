#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS="-R/opt/tribblix/postgres17/lib -lsocket -lnsl" TRIBBLIX_CFLAGS=-D__EXTENSIONS__ PATH=/opt/tribblix/postgres17/bin:$PATH TRIBBLIX_PKG_CONFIG_PATH=/opt/tribblix/postgres17/lib/pkgconfig $THOME/build/mesonbuild -64only pgbackrest-release-2.58.0
${THOME}/build/genpkg TRIBpgbackrest pgbackrest-release-2.58.0
