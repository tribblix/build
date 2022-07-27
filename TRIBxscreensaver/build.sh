#!/bin/sh
#
${THOME}/build/dobuild -64only -gnu xscreensaver-6.04 -C "--with-gtk"
cd xscreensaver-6.04-64bit
rm -fr /tmp/xs
gmake install install_prefix=/tmp/xs
${THOME}/build/create_pkg TRIBxscreensaver /tmp/xs
rm -fr /tmp/xs
cd ..
