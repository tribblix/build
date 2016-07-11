#!/bin/sh
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild smpeg2-2.0.0
${THOME}/build/genpkg TRIBsmpeg2 smpeg2-2.0.0
