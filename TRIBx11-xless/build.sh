#!/bin/sh
#
# (modified /usr/lib/X11/config/site.def to add HasGcc3 YES)
#
${THOME}/build/unpack xless-1.7
cd xless-1.7
xmkmf
gmake
rm -fr /tmp/xl
mkdir -p /tmp/xl/usr/bin /tmp/xl/usr/lib/X11/app-defaults /tmp/xl/usr/share/man/man1
cp xless /tmp/xl/usr/bin
cp xless.help /tmp/xl/usr/lib/X11
cp XLess.ad /tmp/xl/usr/lib/X11/app-defaults/XLess
cp XLess-co.ad /tmp/xl/usr/lib/X11/app-defaults/XLess-color
cp xless._man /tmp/xl/usr/share/man/man1/xless.1
${THOME}/build/create_pkg TRIBx11-xless /tmp/xl
rm -fr /tmp/xl
