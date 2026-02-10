#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS="-D_XPG4_2 -D_POSIX_PTHREAD_SEMANTICS -D__EXTENSIONS__" $THOME/build/dobuild +64only xrdp-0.10.5 -C LIBS=-lsocket
${THOME}/build/genpkg TRIBxrdp xrdp-0.10.5
