#!/bin/sh
#
git clone https://github.com/herrbischoff/ee
cd ee
sed -i s:cc:gcc: create.make
./create.make
sed -i 's:-DHAS_UNISTD:-O -DHAS_UNISTD:' make.local
make -f make.local curses
rm -fr /tmp/eee
mkdir -p /tmp/eee/usr/bin
mkdir -p /tmp/eee/usr/share/man/man1
cp ee /tmp/eee/usr/bin
cp ee.1 /tmp/eee/usr/share/man/man1
${THOME}/build/create_pkg TRIBeditor-ee /tmp/eee
rm -fr /tmp/eee
