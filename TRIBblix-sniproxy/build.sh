#!/bin/sh
#
$THOME/build/unpack sniproxy-0.6.1
cd sniproxy-0.6.1
./autogen.sh
env LIBS="-lsocket -lnsl" CPPFLAGS="-D__EXTENSIONS__ -D_XPG4_2 -m64" LDFLAGS=-m64 ./configure --prefix=/opt/tribblix/sniproxy
gmake -j 4
${THOME}/build/genpkg TRIBblix-sniproxy
cd ..
