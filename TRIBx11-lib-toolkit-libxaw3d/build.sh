#!/bin/sh
#
${THOME}/build/dobuild -64 libXaw3d-1.6.3 -C --disable-xaw6
${THOME}/build/genpkg TRIBx11-lib-toolkit-libxaw3d libXaw3d-1.6.3
