#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# can't find procset_t - -D__EXTENSIONS__
# wants the extended mshgdr struct - -D_XPG4_2
# doesn't build in 32-bit because the asm isn't handled right
#
env LIBS="-lsocket -lnsl -lssp_ns" TRIBBLIX_CFLAGS="-D_XPG4_2 -D__EXTENSIONS__" $THOME/build/dobuild -64only vlc-3.0.21 -C "--disable-lua --disable-live555 --disable-smbclient BUILDCC=gcc"
${THOME}/build/genpkg TRIBvlc vlc-3.0.21
