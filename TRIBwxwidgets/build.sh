#!/bin/sh
#
${THOME}/build/unpack wxWidgets-3.0.2
cd wxWidgets-3.0.2
rm -fr buildgtk
mkdir buildgtk
cd buildgtk
env CXXFLAGS="-std=c++11 -fpermissive" ../configure --with-gtk --prefix=/usr --disable-xlocale
gmake -j 12
rm -fr /tmp/wxg
gmake install DESTDIR=/tmp/wxg
${THOME}/build/create_pkg TRIBwxwidgets /tmp/wxg /tmp/pct
rm -fr /tmp/wxg
