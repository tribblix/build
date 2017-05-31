#!/bin/sh
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64 smpeg2-2.0.0
${THOME}/build/genpkg TRIBsmpeg2 smpeg2-2.0.0
