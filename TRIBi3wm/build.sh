#!/bin/sh
#
# i3 now switched to meson
#
env TRIBBLIX_LDFLAGS=-lsocket TRIBBLIX_CFLAGS=-D__EXTENSIONS__ ${THOME}/build/mesonbuild -64only i3-4.22
$THOME/build/genpkg TRIBi3wm i3-4.22
