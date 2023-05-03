#!/bin/sh
#
# this used to overlap with TRIBsmpeg, but that is no more
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64 smpeg-main
${THOME}/build/genpkg TRIBsmpeg2 smpeg-main
