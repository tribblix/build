#!/bin/sh
#
# Update ghostscript
# Force more system libraries, clean documentation up, disable other
# things to keep size down to reasonable levels. (Now zap is 11M smaller
# than before.)
#
${THOME}/build/dobuild ghostscript-9.15 -C "--disable-compile-inits --with-system-libtiff --disable-gtk --disable-dbus --disable-cups --enable-dynamic LIBS=-lz"
cd ghostscript-9.15
gmake -j4 so
gmake DESTDIR=/tmp/ags install
gmake DESTDIR=/tmp/ags soinstall
ginstall -v -m644 base/*.h /tmp/ags/usr/include/ghostscript/
mkdir -p /tmp/ags/usr/share/ghostscript
cd /tmp/ags/usr/share/ghostscript
${THOME}/build/unpack ghostscript-fonts-std-8.11
${THOME}/build/unpack gnu-gs-fonts-other-6.0
rm 9.15/doc/*.*
cd
${THOME}/build/create_pkg TRIBgpl-ghostscript /tmp/ags
