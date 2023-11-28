#!/bin/sh
#
${THOME}/build/unpack Module-Build-Tiny-0.047
cd Module-Build-Tiny-0.047
perl Build.PL
./Build
rm -fr /tmp/mbt
./Build install -destdir /tmp/mbt
cd ..
${THOME}/build/create_pkg TRIBlib-perl-5-build-tiny /tmp/mbt
rm -fr /tmp/mbt
