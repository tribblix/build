#!/bin/sh
#
# Since the 2.2.1 release, CDE should build out of the box
#
${THOME}/build/unpack cde-src-2.2.4
cd cde-2.2.4

mkdir -p imports/x11/include
cd imports/x11/include
ln -s /usr/include/X11 .
ln -s /usr/X11/include/Xm .

cd ../../..
# ** edit config/imake/Makefile.ini cc->gcc
make World

rm -fr /tmp/cde5
make -k install DESTDIR=/tmp/cde5
make -k install.man DESTDIR=/tmp/cde5

cd /tmp/cde5
mv /tmp/cde5misc usr/dt/config/svc
mv bin/* usr/dt/bin
mv app-defaults/* usr/dt/lib/X11/app-defaults
rmdir bin app-defaults
mv C appconfig infolib ja usr/dt
cd usr/dt
mkdir share
mv man include share
mv share/man/man1 share/man/man1x
ln -s share/* .
${THOME}/build/create_pkg TRIBcde /tmp/cde5

rm -fr /tmp/cde5
