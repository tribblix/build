#!/bin/sh
#
# rename the source tarball
# mv fltk-1.3.8-source.tar.bz2 fltk-1.3.8.tar.bz2
#
${THOME}/build/dobuild -64 fltk-1.3.8 -C --enable-shared
${THOME}/build/genpkg TRIBfltk fltk-1.3.8
