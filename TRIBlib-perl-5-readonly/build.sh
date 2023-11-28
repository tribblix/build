#!/bin/sh
#
${THOME}/build/unpack Readonly-2.05
cd Readonly-2.05
perl Build.PL
./Build
rm -fr /tmp/hoaa
./Build install -destdir /tmp/hoaa
${THOME}/build/create_pkg TRIBlib-perl-5-readonly /tmp/hoaa
rm -fr /tmp/hoaa
cd ..
