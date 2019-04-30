#!/bin/sh
#
${THOME}/build/dobuild -64 libexpoxy-1.5.2 -C --enable-egl=no
${THOME}/build/genpkg TRIBx11-libepoxy libepoxy-1.5.2
