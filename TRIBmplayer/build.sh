#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# It's not an autoconf configure
#
# versioning is interesting, it has 2 parts and we used the wrong
# part of the version number in the past
#
# Disable SDL as it's SDL1
#
env TRIBBLIX_CFLAGS=-m64 TRIBBLIX_CXXFLAGS=-m64 TRIBBLIX_LDFLAGS=-m64 $THOME/build/dobuild -64only MPlayer-1.5 -C "--enable-gui --disable-sdl --disable-smb"
${THOME}/build/genpkg TRIBmplayer MPlayer-1.5
