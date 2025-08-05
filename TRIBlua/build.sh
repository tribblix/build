#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# (chicanery as it doesn't build a shared library by default)
#
# enlightenment (efl) needs 5.2 amd 5.1 compat
#
${THOME}/build/unpack +64 lua-5.3.6
rm -fr /tmp/ll

cd lua-5.3.6-64bit
# make the 64-bit path
sed -i s:lib/lua/:lib/`$THOME/build/getarch`/lua/: src/luaconf.h
#sed -i s:/bin:/bin/`$THOME/build/getarch`: Makefile
gmake solaris INSTALL_TOP=/usr INSTALL=/usr/bin/ginstall CC="gcc -fPIC -DPIC -std=gnu99" MYCFLAGS="-m64 -DLUA_COMPAT_5_1" MYLDFLAGS="-m64"
gmake install INSTALL_TOP=/tmp/ll/usr INSTALL=/usr/bin/ginstall DESTDIR=/tmp/ll
cd src
# -z defs so we find any unresolved symbols
# should be all the .o except lua.o and luac.o
gcc -m64 -Wl,-soname,liblua.so.1 -o liblua.so.1 -shared lapi.o lcode.o lcorolib.o lctype.o ldebug.o ldo.o ldump.o lfunc.o lgc.o llex.o lmem.o lobject.o lopcodes.o lparser.o lstate.o lstring.o ltable.o ltm.o lundump.o lvm.o lzio.o lauxlib.o lbaselib.o lbitlib.o ldblib.o liolib.o lmathlib.o loslib.o ltablib.o lutf8lib.o lstrlib.o loadlib.o linit.o -z defs -lm
mkdir -p /tmp/ll/usr/lib/`$THOME/build/getarch`/lua
cp liblua.so.1 /tmp/ll/usr/lib/`$THOME/build/getarch`
cd ../..

cd /tmp/ll/usr/lib/`$THOME/build/getarch`
ln -s liblua.so.1 liblua.so
${THOME}/build/create_pkg TRIBlua /tmp/ll
cd
rm -fr /tmp/ll
