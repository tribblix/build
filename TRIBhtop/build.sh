#!/bin/sh
#
# htop support for solaris/illumos is experimental
#
# Thanks to Guy M Broome <gmbroome@vcu.edu> 
#
# the build here is rather manual
#
# requires ncurses 6
#
rm -fr /tmp/ht1
git clone https://github.com/hishamhm/htop
cd htop
./autogen.sh
./configure --disable-unicode
gmake -j
mkdir -p /tmp/ht1/usr/bin/`uname -p|sed s:i386:i86:`
cp htop /tmp/ht1/usr/bin/`uname -p|sed s:i386:i86:`
gmake clean
env PATH=/usr/gnu/bin/`isainfo -k`:$PATH PKG_CONFIG_PATH=/usr/lib/`isainfo -k`/pkgconfig ./configure --disable-unicode LDFLAGS="-m64" CFLAGS="-O -m64"
gmake -j
mkdir -p /tmp/ht1/usr/bin/`isainfo -k`
cp htop /tmp/ht1/usr/bin/`isainfo -k`

mkdir -p /tmp/ht1/usr/share/man/man1
cp htop.1 /tmp/ht1/usr/share/man/man1

${THOME}/build/create_pkg TRIBhtop /tmp/ht1
rm -fr /tmp/ht1
