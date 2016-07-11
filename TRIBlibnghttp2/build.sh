#!/bin/sh
#
env LIBS="-lsocket -lnsl" TRIBBLIX_CXXFLAGS=-fpermissive ${THOME}/build/dobuild -64 nghttp2-1.5.0
${THOME}/build/genpkg TRIBlibnghttp2 nghttp2-1.5.0
