#!/bin/sh
#
# Since the 2.2.1 release, CDE should build out of the box
#
${THOME}/build/unpack cde-src-2.2.4a
cd cde-2.2.4a

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

#
# FIXME
#  programs/localized/C/types/dtwm.fp need to end up in
#    /usr/dt/appconfig/types or /usr/dt/appconfig/types/C

( cd doc/C/man ; tar cf - man1 man1m man3 man4 man5 man6 ) | ( cd /tmp/cde5/usr/dt/man ; tar xf - )
( cd programs ; tar cf - palettes backdrops ) | (cd /tmp/cde5/usr/dt ; tar xf -)
mkdir -p /tmp/cde5/usr/dt/config/C
#cp programs/localized/C/config/sys.dtwmrc /tmp/cde5/usr/dt/config/C
mkdir -p /tmp/cde5/usr/dt/lib/nls/msg/C
cp programs/localized/C/msg/*.cat /tmp/cde5/usr/dt/lib/nls/msg/C
mkdir -p /tmp/cde5/usr/dt/app-defaults
cp programs/localized/C/app-defaults/Dtwm /tmp/cde5/usr/dt/app-defaults
mkdir -p /tmp/cde5/usr/dt/appconfig/types/C
cp programs/localized/C/types/*.dt /tmp/cde5/usr/dt/appconfig/types/C
cp programs/icons/*.pm programs/icons/*.bm /tmp/cde5/C

cd /tmp/cde5
mkdir -p usr/dt/config
mv /tmp/cde5misc usr/dt/config/svc
mv bin/solaris/dtinfo usr/dt/bin
rmdir bin/solaris
mv bin/* usr/dt/bin
rmdir bin
mkdir -p usr/dt/app-defaults
mv app-defaults/* usr/dt/app-defaults
rmdir app-defaults
rmdir usr/dt/lib/X11/app-defaults
ln -s ../../app-defaults usr/dt/lib/X11
mkdir -p usr/dt/appconfig
mv appconfig/* usr/dt/appconfig
rmdir appconfig
mv infolib usr/dt
mkdir -p usr/dt/appconfig/icons
mv C ja usr/dt/appconfig/icons
cd usr/dt
mkdir share
mv man include share
mkdir -p share/man/man1x
mv share/man/man1/*.1x share/man/man1x
ln -s share/* .
${THOME}/build/create_pkg TRIBcde /tmp/cde5

rm -fr /tmp/cde5
