#!/bin/sh
#
env TRIBBLIX_CFLAGS=-D_POSIX_PTHREAD_SEMANTICS $THOME/build/dobuild +64only xrdp-0.9.21 -C LIBS=-lsocket
${THOME}/build/genpkg  TRIBxrdp xrdp-0.9.21
