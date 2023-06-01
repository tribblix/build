#!/bin/sh
#
# putty
#
$THOME/build/unpack putty-0.76
cd putty-0.76/unix
./configure --prefix=/usr LIBS="-lsocket -lnsl"
gmake -j 6
${THOME}/build/genpkg TRIBputty
