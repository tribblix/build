#!/bin/sh
#
# it's not an autoconf configure, so needs a little chicanery
#
env TRIBBLIX_CFLAGS="-m64" TRIBBLIX_LDFLAGS="-m64" $THOME/build/dobuild optipng-0.7.8 -C "--prefix=/usr --with-system-libs"
${THOME}/build/genpkg TRIBoptipng optipng-0.7.8
