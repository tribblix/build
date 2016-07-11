#!/bin/sh
#
# (chicanery as it doesn't build a shared library by default)
#
${THOME}/build/unpack lua-5.3.2
cd lua-5.3.2
gmake solaris INSTALL_TOP=/usr INSTALL=/usr/bin/ginstall CC="gcc -fPIC -DPIC -std=gnu99"
rm -fr /tmp/ll
gmake install INSTALL_TOP=/tmp/ll/usr INSTALL=/usr/bin/ginstall DESTDIR=/tmp/ll
cd src
# -z defs so we find any unresolved symbols
# should be all the .o except lua.o and luac.o
gcc -Wl,-soname,liblua.so.1 -o liblua.so.1 -shared lapi.o lcode.o lcorolib.o lctype.o ldebug.o ldo.o ldump.o lfunc.o lgc.o llex.o lmem.o lobject.o lopcodes.o lparser.o lstate.o lstring.o ltable.o ltm.o lundump.o lvm.o lzio.o lauxlib.o lbaselib.o lbitlib.o ldblib.o liolib.o lmathlib.o loslib.o ltablib.o lutf8lib.o lstrlib.o loadlib.o linit.o -z defs -lm
cp liblua.so.1 /tmp/ll/usr/lib
cd /tmp/ll/usr/lib
ln -s liblua.so.1 liblua.so
${THOME}/build/create_pkg TRIBlua /tmp/ll
cd
rm -fr /tmp/ll
