#!/bin/sh
#
git clone https://github.com/dlundquist/sniproxy.git
cd sniproxy
./autogen.sh
env LIBS="-lsocket -lnsl" CPPFLAGS="-D__EXTENSIONS__ -D_XPG4_2" CC="gcc -std=gnu99" ./configure --prefix=/opt/tribblix/sniproxy
gmake -j 4
${THOME}/build/genpkg TRIBblix-sniproxy
cd ..
