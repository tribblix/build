#!/bin/sh
#
${THOME}/build/dobuild -64 libXaw-1.0.14 -C --disable-xaw6
${THOME}/build/genpkg TRIBx11-lib-toolkit-libxaw7 libXaw-1.0.14
