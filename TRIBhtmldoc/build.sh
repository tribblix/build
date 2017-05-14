#!/bin/sh
#
${THOME}/build/dobuild htmldoc-1.8.30
cd htmldoc-1.8.30
rm -fr /tmp/hd
gmake install datadir=/tmp/hd/usr/share mandir=/tmp/hd/usr/share/man bindir=/tmp/hd/usr/bin
${THOME}/build/create_pkg TRIBhtmldoc /tmp/hd
cd ..
rm -fr /tmp/hd
