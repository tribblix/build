#!/bin/sh
#
$THOME/build/dobuild -gnu quilt-0.65 -C "--without-date --with-grep=/usr/gnu/bin/grep --with-sed=/usr/gnu/bin/sed --without-getopt --with-diff=/usr/gnu/bin/diff"
cd quilt-0.65
rm -fr /tmp/qqt4
gmake install BUILD_ROOT=/tmp/qqt4
${THOME}/build/create_pkg TRIBquilt /tmp/qqt4
rm -fr /tmp/qqt4
cd ..
