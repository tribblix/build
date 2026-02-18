#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# It must go in /lib as wget needs it
# omnios has LDSHARED="gcc -shared -nostdlib" CFLAGS="-DNO_VIZ"
# oi has much more in LDSHARED and forces -O2
# -Wl,-z -Wl,direct -Wl,-z -Wl,text -Wl,-z -Wl,defs -Wl,-h -Wl,libz.so.1
# It's not a real configure script
#
${THOME}/build/unpack -64 zlib-1.3.2
cd zlib-1.3.2
env CFLAGS="-DNO_VIZ -O2" ./configure --prefix=/usr --sharedlibdir=/lib
gmake LDSHARED="gcc -shared -nostdlib -Wl,-z -Wl,direct -Wl,-z -Wl,text -Wl,-z -Wl,defs -Wl,-h -Wl,libz.so.1 -Wl,-M -Wl,${THOME}/build/patches/zlib.mapfile"
cd ..
cd zlib-1.3.2-64bit
env CFLAGS="-DNO_VIZ -O2" ./configure --64 --prefix=/usr --libdir=/usr/lib/`isainfo -k` --sharedlibdir=/lib/`isainfo -k`
gmake LDSHARED="gcc -shared -nostdlib -Wl,-z -Wl,direct -Wl,-z -Wl,text -Wl,-z -Wl,defs -Wl,-h -Wl,libz.so.1 -Wl,-M -Wl,${THOME}/build/patches/zlib.mapfile"
cd ..
${THOME}/build/genpkg TRIBlib-zlib zlib-1.3.2
