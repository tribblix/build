#!/bin/sh
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild fuse-1.5.7 -C --enable-desktop-integration
${THOME}/build/genpkg TRIBspectrum-fuse fuse-1.5.7
