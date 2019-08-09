#!/bin/sh
#
# this gcc7 build is designed purely as a compiler for illumos-gate
# at some point in the future it will be promoted to the primary compiler
# for Tribblix, which would be repackaged in a different location, split
# into dev and runtime packages, with fortran added, at which point this
# package might be obsolete
#
# while it builds on sparc, illumos-gate will not work with gcc7 on sparc
# so it's only useful to find the gcc7 bugs in the source
#
# download the tarball like so
#
# wget https://github.com/illumos/gcc/archive/gcc-7.3.0-il-3.tar.gz
#

${THOME}/build/unpack gcc-gcc-7.3.0-il-3
mv gcc-gcc-7.3.0-il-3 gcc-7.3.0-il-3
cd gcc-7.3.0-il-3

#
# these are the recommended versions
#
${THOME}/build/unpack mpc-1.0.3
${THOME}/build/unpack gmp-6.1.0
${THOME}/build/unpack mpfr-3.1.4
mv mpc-1.0.3 mpc
mv gmp-6.1.0 gmp
mv mpfr-3.1.4 mpfr

mkdir build
cd build

#
# configure
#

###x86
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/opt/gcc/7.3.0 --enable-languages=c,c++,objc \
  --with-pkgversion="Illumos/Tribblix 7.3.0" \
  --with-bugurl="http://www.tribblix.org/feedback.html" \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/gnu/bin/as --with-gnu-as

###sparc
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/opt/gcc/7.3.0 --enable-languages=c,c++,objc \
  --with-pkgversion="Illumos/Tribblix 7.3.0" \
  --with-bugurl="http://www.tribblix.org/feedback.html" \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/ccs/bin/as --without-gnu-as



#
# build
#
# (parallel make on sparc appears busted)
#
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
gmake -j 8

#
# plain install is ~700M on x86
# with install-strip we get down to 239M
#
rm -fr /tmp/gc7
gmake DESTDIR=/tmp/gc7 install-strip
rm -fr /tmp/gc7/opt/gcc/7.3.0/lib/gcc/i386-pc-solaris2.11/7.3.0/include-fixed
${THOME}/build/create_pkg TRIBdev-illumos-gcc7 /tmp/gc7
rm -fr /tmp/gc7
