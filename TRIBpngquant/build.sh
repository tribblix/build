#!/bin/sh
#
# later versions (3.x) are rust-based, stay with the 2.x branch
# for wider portability
#
# rename the download
# mv pngquant-2.18.0-src.tar.gz pngquant-2.18.0.tar.gz
#
# it's not an autoconf configure, but it understands the arguments that
# dobuild uses well enough
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only pngquant-2.18.0 -C --with-libimagequant
${THOME}/build/genpkg -gnu TRIBpngquant pngquant-2.18.0
