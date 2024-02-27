#!/bin/sh
#
env TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64" ${THOME}/build/dobuild -64 mpg123-1.32.5 \
    -C "--disable-static --enable-shared --enable-int-quality --enable-fifo --enable-network --enable-ipv6=yes --with-optimization=3 --with-cpu=sse" \
    +C "--disable-static --enable-shared --enable-int-quality --enable-fifo --enable-network --enable-ipv6=yes --with-optimization=3 --with-cpu=x86-64"
#
# sparc
# -C "--disable-static --enable-shared --enable-int-quality --enable-fifo --enable-network --enable-ipv6=yes --with-optimization=3"
#
${THOME}/build/genpkg TRIBmpg123 mpg123-1.32.5
