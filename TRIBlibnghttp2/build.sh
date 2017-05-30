#!/bin/sh
#
# Need to install TRIBlibcares for the applications to build
#
env LIBS="-lsocket -lnsl" TRIBBLIX_CXXFLAGS=-fpermissive ${THOME}/build/dobuild -64 nghttp2-1.23.0
${THOME}/build/genpkg TRIBlibnghttp2 nghttp2-1.23.0
${THOME}/build/genpkg TRIBnghttp2-apps nghttp2-1.23.0
