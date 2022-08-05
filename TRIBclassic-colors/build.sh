#!/bin/sh
#
git clone https://github.com/justinmeiners/classic-colors
cd classic-colors
sed -i s:/usr/local/share/classic-colors/help:/usr/share/classic-colors/help: ui_main.c
./configure
gmake

rm -fr /tmp/xd1
mkdir -p /tmp/xd1/usr/bin
cp bin/classic-colors /tmp/xd1/usr/bin
mkdir -p /tmp/xd1/usr/share/classic-colors/help
cp help/* /tmp/xd1/usr/share/classic-colors/help
${THOME}/build/create_pkg TRIBclassic-colors /tmp/xd1
