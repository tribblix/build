#!/bin/sh
#
# note that readline can cause build failures elsewhere
# so shouldn't be left installed on a build system
#
zap install-overlay fortran
zap install TRIBgnu-libiconv TRIBreadline
${THOME}/build/unpack R-3.6.3
cd R-3.6.3
env PATH=/usr/gnu/bin:$PATH CPPFLAGS="-I/usr/gnu/include" LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" ./configure --prefix=/usr
gmake -j 12
gmake check
rm -fr /tmp/grs
# there's a broken dependency here, install requires
# this even though it can't make is
touch doc/NEWS.pdf
env PATH=/usr/gnu/bin:$PATH gmake prefix=/tmp/grs/usr install-strip
rm /tmp/grs/usr/lib/R/doc/NEWS.pdf
# (strip results in 64M rather than 80M of disk space used)
${THOME}/build/create_pkg TRIBr /tmp/grs
cd ..
rm -fr /tmp/grs
