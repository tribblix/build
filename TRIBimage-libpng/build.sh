#!/bin/sh
#
# old versions shipped in TRIBlibpng-compat
#
# ship both 1.4 and 1.6
#
${THOME}/build/dobuild -64 libpng-1.4.22 -C --sysconfdir=/etc
${THOME}/build/dobuild -64 libpng-1.6.42 -C --sysconfdir=/etc
${THOME}/build/genpkg TRIBimage-libpng libpng-1.4.22 libpng-1.6.42
