#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this gcc10 build is designed purely as the compiler for illumos-gate
#
# while it builds on sparc, illumos-gate will not work with gcc10 on sparc
# so it's only useful there to find the gcc10 bugs in the source
#
# download the tarball like so
#
# wget https://github.com/illumos/gcc/archive/gcc-10.4.0-il-2.tar.gz
#

${THOME}/build/unpack gcc-10.4.0-il-2
mv gcc-gcc-10.4.0-il-2 gcc-10.4.0-il-2
cd gcc-10.4.0-il-2

#
# these are the required versions for an in-tree build
# (see contrib/download_prerequisites for the desired versions)
#
${THOME}/build/unpack mpc-1.0.3
${THOME}/build/unpack gmp-6.1.0
${THOME}/build/unpack mpfr-3.1.6
mv mpc-1.0.3 mpc
mv gmp-6.1.0 gmp
mv mpfr-3.1.6 mpfr

mkdir build
cd build

#
# configure
#

###x86
# last few flags to match OmniOS
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/opt/gcc/10.4.0 --enable-languages=c,c++,objc \
  --with-pkgversion="illumos/Tribblix 10.4.0" \
  --with-bugurl="http://www.tribblix.org/feedback.html" \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/gnu/bin/as --with-gnu-as \
  --enable-__cxa_atexit \
  --enable-initfini-array \
  --disable-libitm \
  enable_frame_pointer=yes

###sparc
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/opt/gcc/10.4.0 --enable-languages=c,c++,objc \
  --with-pkgversion="illumos/Tribblix 10.4.0" \
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
# plain install is 1.33G on x86
# with install-strip we get down to 410M
#
rm -fr /tmp/gc10
gmake DESTDIR=/tmp/gc10 install-strip
rm -fr /tmp/gc10/opt/gcc/10.4.0/lib/gcc/i386-pc-solaris2.11/10.4.0/include-fixed
${THOME}/build/create_pkg TRIBdev-illumos-gcc10 /tmp/gc10
rm -fr /tmp/gc10
