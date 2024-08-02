#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-D_POSIX_PTHREAD_SEMANTICS $THOME/build/dobuild +64only xrdp-0.9.26 -C LIBS=-lsocket
${THOME}/build/genpkg TRIBxrdp xrdp-0.9.26
