#!/bin/sh
#
# Update ghostscript
# Force more system libraries, clean documentation up, disable other
# things to keep size down to reasonable levels.
#
# see the BLFS documentation, we build the same way
#  http://www.linuxfromscratch.org/blfs/view/svn/pst/gs.html
#
${THOME}/build/dobuild ghostscript-9.26 -C "--disable-compile-inits --with-system-libtiff --disable-gtk --disable-dbus --disable-cups --enable-dynamic LIBS=-lz"
cd ghostscript-9.26
gmake -j4 so
rm -fr /tmp/ags
gmake DESTDIR=/tmp/ags install
gmake DESTDIR=/tmp/ags soinstall
ginstall -v -m644 base/*.h /tmp/ags/usr/include/ghostscript/
tar cf - examples | ( cd /tmp/ags/usr/share/ghostscript/9.26 ; tar xf -)
mkdir -p /tmp/ags/usr/share/ghostscript
# it looks odd just having a subset of man pages in german
# no other non-english languages
rm -fr /tmp/ags/usr/share/man/de
cd /tmp/ags/usr/share/ghostscript
${THOME}/build/unpack ghostscript-fonts-std-8.11
${THOME}/build/unpack gnu-gs-fonts-other-6.0
rm -f 9.26/doc
rm -f 9.26/doc/*.*
rm -f ../doc/ghostscript/9.26/*.*
cd
${THOME}/build/create_pkg TRIBgpl-ghostscript /tmp/ags
rm -fr /tmp/ags
