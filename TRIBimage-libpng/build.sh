#!/bin/sh
#
# old versions shipped in TRIBlibpng-compat
#
# we reverted to 1.4, otherwise we got a mess with both 1.4 and
# 1.6 libraries linked
#
${THOME}/build/dobuild -64 libpng-1.4.22 -C --sysconfdir=/etc
${THOME}/build/genpkg TRIBimage-libpng libpng-1.4.22
