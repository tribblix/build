#!/bin/sh
#
# The legacy SONAME from OI is just a .1
# Ignore the default -g to keep the size down
#
${THOME}/build/unpack -64 bzip2-1.0.6
rm -fr /tmp/bb
mkdir -p /tmp/bb
mkdir -p /tmp/bb/usr/bin/amd64
mkdir -p /tmp/bb/usr/lib/amd64
cd bzip2-1.0.6-64bit
gsed -i 's:-shared:-shared -m64:' Makefile-libbz2_so
gsed -i 's:libbz2.so.1.0.6:libbz2.so.1:g' Makefile-libbz2_so
gmake CFLAGS="-fpic -fPIC -Wall -Winline -O2 -m64" -f Makefile-libbz2_so
gcc -shared -m64 -Wl,-soname -Wl,libbz2.so.1 -o libbz2.so.1 -nostdlib -lc blocksort.o huffman.o crctable.o randtable.o compress.o decompress.o bzlib.o
gcc -m64 -o bzip2-shared bzip2.c libbz2.so.1
cp bzip2-shared /tmp/bb/usr/bin/amd64/bzip2
ln /tmp/bb/usr/bin/amd64/bzip2 /tmp/bb/usr/bin/amd64/bzcat
ln /tmp/bb/usr/bin/amd64/bzip2 /tmp/bb/usr/bin/amd64/bunzip2
cp libbz2.so.1 /tmp/bb/usr/lib/amd64
ln -s libbz2.so.1 /tmp/bb/usr/lib/amd64/libbz2.so
cd ..
cd bzip2-1.0.6
gsed -i 's:libbz2.so.1.0.6:libbz2.so.1:g' Makefile-libbz2_so
gmake CFLAGS="-fpic -fPIC -Wall -Winline -O2" -f Makefile-libbz2_so
gcc -shared -Wl,-soname -Wl,libbz2.so.1 -o libbz2.so.1 -nostdlib -lc blocksort.o huffman.o crctable.o randtable.o compress.o decompress.o bzlib.o
gcc -o bzip2-shared bzip2.c libbz2.so.1
gmake
gmake install PREFIX=/tmp/bb/usr
rm /tmp/bb/usr/bin/{bzcat,bzip2,bunzip2}
cp bzip2-shared /tmp/bb/usr/bin/bzip2
ln /tmp/bb/usr/bin/bzip2 /tmp/bb/usr/bin/bzcat
ln /tmp/bb/usr/bin/bzip2 /tmp/bb/usr/bin/bunzip2
rm /tmp/bb/usr/bin/bzless
ln /tmp/bb/usr/bin/bzmore /tmp/bb/usr/bin/bzless
rm /tmp/bb/usr/bin/bzcmp /tmp/bb/usr/bin/bzegrep /tmp/bb/usr/bin/bzfgrep
ln /tmp/bb/usr/bin/bzdiff /tmp/bb/usr/bin/bzcmp
ln /tmp/bb/usr/bin/bzgrep /tmp/bb/usr/bin/bzegrep
ln /tmp/bb/usr/bin/bzgrep /tmp/bb/usr/bin/bzfgrep
echo ".so man1/bzip2.1" > /tmp/bb/usr/man/man1/bzcat.1
echo ".so man1/bzip2.1" > /tmp/bb/usr/man/man1/bunzip2.1
cp libbz2.so.1 /tmp/bb/usr/lib
ln -s libbz2.so.1 /tmp/bb/usr/lib/libbz2.so
cd ..
${THOME}/build/create_pkg TRIBcompress-bzip2 /tmp/bb
rm -fr /tmp/bb
