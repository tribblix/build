#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is a patched vte, that handles home/end/pgup/pgdown sanely
# without requiring shift
#
# later versions require newer glib
#
# sparc downrev due to older compiler
#
env TRIBBLIX_CXXFLAGS=-D__EXTENSIONS__ ${THOME}/build/mesonbuild +gnu -64only vte-0.74.2 -C "-D_b_symbolic_functions=false -Dgir=false -Dvapi=false -Dicu=false -D_systemd=false -Dgtk4=false"
${THOME}/build/genpkg TRIBvte vte-0.74.2
