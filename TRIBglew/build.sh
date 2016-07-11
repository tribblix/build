#!/bin/sh
#
${THOME}/build/dobuild glew-1.13.0
cd glew-1.13.0
rm -fr /tmp/gg
gmake install DESTDIR=/tmp/gg INSTALL=ginstall
${THOME}/build/create_pkg TRIBglew /tmp/gg
rm -fr /tmp/gg
