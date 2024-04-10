#!/bin/sh
#
# this is a patched vte, that handles home/end/pgup/pgdown sanely
# without requiring shift
#
# later versions require newer glib
#
env TRIBBLIX_CXXFLAGS=-D__EXTENSIONS__ PATH=/usr/gnu/bin:$PATH ${THOME}/build/mesonbuild -64only vte-0.74.2 -C "-D_b_symbolic_functions=false -Dgir=false -Dvapi=false -Dicu=false -D_systemd=false -Dgtk4=false"
${THOME}/build/genpkg TRIBvte vte-0.74.2
