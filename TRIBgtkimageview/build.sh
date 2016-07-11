#!/bin/sh
#
# (download the tarball from OI)
#
${THOME}/build/dobuild gtkimageview-1.6.4 -C CFLAGS=-D__EXTENSIONS__
${THOME}/build/genpkg TRIBgtkimageview gtkimageview-1.6.4
