#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# disable perl for now as it's never worked
#
# we ought to pick up the 64-bit python, but while the module builds
# that gets symbol errors at runtime we ought to look at
#
env AR=/usr/bin/ar TRIBBLIX_LDFLAGS="-lsocket -lnsl" $THOME/build/mesonbuild -gnu -64only hexchat-2.16.2 -C "-Dwith-lua=false -Dwith-sysinfo=false -Dwith-perl=false -Dwith-python=false -Dlibcanberra=disabled"
${THOME}/build/genpkg TRIBhexchat hexchat-2.16.2
