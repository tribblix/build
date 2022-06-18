#!/bin/sh
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild fs-uae-3.1.66 -C "--with-libmpeg2=builtin --disable-jit"
${THOME}/build/genpkg TRIBfs-uae fs-uae-3.1.66
