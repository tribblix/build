#!/bin/sh
#
${THOME}/build/unpack icedtea-web-1.6
cd icedtea-web-1.6/
./configure --prefix=/usr --with-jdk-home=/usr/jdk/latest --disable-docs
gmake -j 4
cd ..
${THOME}/build/genpkg TRIBicedtea-web icedtea-web-1.6
