#!/bin/sh
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild fuse-1.5.2
${THOME}/build/genpkg TRIBspectrum-fuse fuse-1.5.2
