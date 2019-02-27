#!/bin/sh
#
${THOME}/build/unpack ctwm-4.0.2
cd ctwm-4.0.2
sed -i s:std=c99:std=gnu99: cmake_files/compiler_feature_checks.cmake
gmake CMAKE_EXTRAS="-DCMAKE_INSTALL_PREFIX=/usr"
#
# this is an entertaining abuse of genpkg
#
${THOME}/build/genpkg TRIBctwm build
