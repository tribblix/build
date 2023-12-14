#!/bin/sh
#
# i3 now switched to meson
#
# if you update this, also update TRIBlib-perl-5-anyevent-i3
#
env TRIBBLIX_LDFLAGS=-lsocket TRIBBLIX_CFLAGS=-D__EXTENSIONS__ ${THOME}/build/mesonbuild -64only i3-4.23
$THOME/build/genpkg TRIBi3wm i3-4.23
