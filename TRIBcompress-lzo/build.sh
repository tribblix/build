#!/bin/sh
#
# lzo library - also see lzop
#
${THOME}/build/dobuild -64 lzo-2.09 -C "--enable-shared --disable-static"
${THOME}/build/genpkg TRIBcompress-lzo lzo-2.09
