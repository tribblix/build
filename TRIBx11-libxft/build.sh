#!/bin/sh
#
${THOME}/build/dobuild -64 libXft-2.3.2 -C "--with-pic --localstatedir=/var"
${THOME}/build/genpkg TRIBx11-libxft libXft-2.3.2
