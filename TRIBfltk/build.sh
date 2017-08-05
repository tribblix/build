#!/bin/sh
#
# rename the source tarball
# mv fltk-1.3.4-1-source.tar.gz fltk-1.3.4-1.tar.gz
#
${THOME}/build/dobuild -64 fltk-1.3.4-1 -C --enable-shared
${THOME}/build/genpkg TRIBfltk fltk-1.3.4-1
