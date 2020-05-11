#!/bin/sh
#
${THOME}/build/dobuild -gnu xscreensaver-5.44 -C "--with-gtk"
cd xscreensaver-5.44
rm -fr /tmp/xs
gmake install install_prefix=/tmp/xs
${THOME}/build/create_pkg TRIBxscreensaver /tmp/xs
rm -fr /tmp/xs
cd ..
