#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env LDFLAGS="-lsocket -lnsl" TRIBBLIX_LDFLAGS="-lsocket -lnsl" $THOME/build/cmbuild -64only exiv2-0.28.7 -C "-DEXIV2_ENABLE_INIH=OFF"

#
# SPARC is a bit messy, because it has gcc7 and needs libstdc++fs, but
# doesn't actually do it right. With meson, the library is linked correctly
# but something else is wrong with the installation as consumers won't build
#
# The fix is to cd to tribblix_build/src, edit CMakeFiles/exiv2lib.dir/link.txt
# and add -lstdc++fs to the *end* of the link, then source that to rebuild
# the library correctly (the position matters, because it resolves symbols
# in order)
#

${THOME}/build/genpkg TRIBexiv2 exiv2-0.28.7
