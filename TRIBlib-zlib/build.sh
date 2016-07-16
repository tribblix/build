#!/bin/sh
#
# It must go in /lib as wget needs it
# omnios has LDSHARED="gcc -shared -nostdlib" CFLAGS="-DNO_VIZ"
# oi has much more in LDSHARED and forces -O2
# -Wl,-z -Wl,direct -Wl,-z -Wl,text -Wl,-z -Wl,defs -Wl,-h -Wl,libz.so.1
# It's not a real configure script
#
${THOME}/build/unpack -64 zlib-1.2.8
cd zlib-1.2.8
env CFLAGS="-DNO_VIZ -O2" ./configure --prefix=/usr --sharedlibdir=/lib
gmake LDSHARED="gcc -shared -nostdlib -Wl,-z -Wl,direct -Wl,-z -Wl,text -Wl,-z -Wl,defs -Wl,-h -Wl,libz.so.1"
cd ..
cd zlib-1.2.8-64bit
env CFLAGS="-DNO_VIZ -O2" ./configure --64 --prefix=/usr --libdir=/usr/lib/amd64 --sharedlibdir=/lib/amd64
gmake LDSHARED="gcc -shared -nostdlib -Wl,-z -Wl,direct -Wl,-z -Wl,text -Wl,-z -Wl,defs -Wl,-h -Wl,libz.so.1"
cd ..
${THOME}/build/genpkg TRIBlib-zlib zlib-1.2.8
