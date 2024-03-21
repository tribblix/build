#!/bin/sh
#
# wget https://dev-www.libreoffice.org/src/libzmf/libzmf-0.0.2.tar.xz
#
${THOME}/build/dobuild -64only libzmf-0.0.2 -C --disable-werror
${THOME}/build/genpkg TRIBlibzmf libzmf-0.0.2
