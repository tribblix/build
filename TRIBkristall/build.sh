#!/bin/sh
#
${THOME}/build/unpack kristall-0.4
cd kristall-0.4
mkdir build
cd build
/usr/versions/Qt-5/bin/qmake ../src/kristall.pro
sed -i 's:-liconv::' Makefile
gmake -j 4

rm -fr /tmp/kkl
mkdir -p /tmp/kkl/usr/bin
cp kristall /tmp/kkl/usr/bin
strip /tmp/kkl/usr/bin/kristall

cd ..
mkdir -p /tmp/kkl/usr/share/icons/hicolor/32x32/apps
cp src/icons/kristall-32.png /tmp/kkl/usr/share/icons/hicolor/32x32/apps/net.random-projects.kristall.png
mkdir -p /tmp/kkl/usr/share/applications
cp Kristall.desktop /tmp/kkl/usr/share/applications

cd doc
./gen-man.sh
mkdir -p /tmp/kkl/usr/share/man/man1
cp kristall.1 /tmp/kkl/usr/share/man/man1

${THOME}/build/create_pkg TRIBkristall /tmp/kkl

rm -fr /tmp/kkl
