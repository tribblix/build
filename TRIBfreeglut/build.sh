#!/bin/sh
#
${THOME}/build/cmbuild -64 freeglut-3.2.2 -C "-DFREEGLUT_BUILD_STATIC_LIBS=OFF -DCMAKE_BUILD_TYPE=Release"
${THOME}/build/genpkg TRIBfreeglut freeglut-3.2.2
