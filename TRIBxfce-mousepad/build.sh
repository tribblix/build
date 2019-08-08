#!/bin/sh
#
# wants gtksourceview-3.0 by default
# OK, so you need to pass --disable-gtk3 and it'll pull in
# gtksourceview-2.0
#
env TRIBBLIX_CFLAGS=-I/usr/include/gio-unix-2.0 ${THOME}/build/dobuild -gnu mousepad-0.4.2 -C --disable-gtk3
${THOME}/build/genpkg TRIBxfce-mousepad mousepad-0.4.2
