#!/bin/sh
#
# It's not an autoconf configure
#
# versioning is interesting, it has 2 parts and we used the wrong
# part of the version number in the past
#
env TRIBBLIX_CFLAGS=-m64 TRIBBLIX_CXXFLAGS=-m64 TRIBBLIX_LDFLAGS=-m64 $THOME/build/dobuild MPlayer-1.5 -C --enable-gui
${THOME}/build/genpkg TRIBmplayer MPlayer-1.5
