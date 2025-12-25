#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# The legacy SONAME from OI is just a .1
# Ignore the default -g to keep the size down
#
# we build against the shared Makefile, but it doesn't have an install target
# so the install is done by hand
#
${THOME}/build/unpack -64 bzip2-1.0.8
rm -fr /tmp/bb
mkdir -p /tmp/bb/usr/bin
mkdir -p /tmp/bb/usr/include
mkdir -p /tmp/bb/usr/share/man/man1
mkdir -p /tmp/bb/usr/lib/`${THOME}/build/getarch`

cd bzip2-1.0.8-64bit
sed -i 's:-shared:-shared -m64:' Makefile-libbz2_so
sed -i 's:libbz2.so.1.0.8:libbz2.so.1:g' Makefile-libbz2_so
sed -i 's:Wl,libbz2.so.1.0:Wl,libbz2.so.1:' Makefile-libbz2_so
gmake CFLAGS="-fpic -fPIC -Wall -Winline -O2 -m64" -f Makefile-libbz2_so
gmake CFLAGS="-fpic -fPIC -Wall -Winline -O2 -m64" bzip2recover
cp libbz2.so.1 /tmp/bb/usr/lib/`${THOME}/build/getarch`
ln -s libbz2.so.1 /tmp/bb/usr/lib/`${THOME}/build/getarch`/libbz2.so
cp bzlib.h /tmp/bb/usr/include
cp bzip2-shared /tmp/bb/usr/bin/bzip2
cp bzgrep bzmore bzdiff bzip2recover /tmp/bb/usr/bin
cp bz*.1 /tmp/bb/usr/share/man/man1
ln /tmp/bb/usr/bin/bzip2 /tmp/bb/usr/bin/bzcat
ln /tmp/bb/usr/bin/bzip2 /tmp/bb/usr/bin/bunzip2
ln /tmp/bb/usr/bin/bzmore /tmp/bb/usr/bin/bzless
ln /tmp/bb/usr/bin/bzdiff /tmp/bb/usr/bin/bzcmp
ln /tmp/bb/usr/bin/bzgrep /tmp/bb/usr/bin/bzegrep
ln /tmp/bb/usr/bin/bzgrep /tmp/bb/usr/bin/bzfgrep
echo ".so man1/bzip2.1" > /tmp/bb/usr/share/man/man1/bzcat.1
echo ".so man1/bzip2.1" > /tmp/bb/usr/share/man/man1/bunzip2.1
echo ".so man1/bzgrep.1" > /tmp/bb/usr/share/man/man1/bzegrep.1
echo ".so man1/bzgrep.1" > /tmp/bb/usr/share/man/man1/bzfgrep.1
echo ".so man1/bzmore.1" > /tmp/bb/usr/share/man/man1/bzless.1
echo ".so man1/bzdiff.1" > /tmp/bb/usr/share/man/man1/bzcmp.1
cd ..

cd bzip2-1.0.8
sed -i 's:libbz2.so.1.0.8:libbz2.so.1:g' Makefile-libbz2_so
sed -i 's:Wl,libbz2.so.1.0:Wl,libbz2.so.1:' Makefile-libbz2_so
gmake CFLAGS="-fpic -fPIC -Wall -Winline -O2" -f Makefile-libbz2_so
cp libbz2.so.1 /tmp/bb/usr/lib
ln -s libbz2.so.1 /tmp/bb/usr/lib/libbz2.so
cd ..
${THOME}/build/create_pkg TRIBcompress-bzip2 /tmp/bb
rm -fr /tmp/bb
