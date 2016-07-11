#!/bin/sh
#
${THOME}/build/dobuild -64 fltk-1.3.3 -C --enable-shared
${THOME}/build/genpkg TRIBfltk fltk-1.3.3
