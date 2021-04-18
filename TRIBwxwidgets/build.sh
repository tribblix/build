#!/bin/sh
#
${THOME}/build/unpack wxWidgets-3.1.5
cd wxWidgets-3.1.5
rm -fr buildgtk
mkdir buildgtk
cd buildgtk
env CXXFLAGS="-std=c++11 -fpermissive" ../configure --with-gtk --prefix=/usr --disable-xlocale
gmake -j 12
${THOME}/build/genpkg TRIBwxwidgets
