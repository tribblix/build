#!/bin/sh
#
# note that readline and libiconv cause build failures elsewhere
# so shouldn't be left installed on a build system
#
zap install-overlay fortran
zap install TRIBgnu-libiconv TRIBreadline
${THOME}/build/unpack R-3.5.0
cd R-3.5.0
env PATH=/usr/gnu/bin:$PATH CPPFLAGS="-I/usr/gnu/include" LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" ./configure --prefix=/usr
gmake -j 12
gmake check
rm -fr /tmp/grs
env PATH=/usr/gnu/bin:$PATH gmake prefix=/tmp/grs/usr install-strip
# (strip results in 54M rather than 68M of disk space used)
${THOME}/build/create_pkg TRIBr /tmp/grs
cd ..
rm -fr /tmp/grs
