#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this gcc14 build is designed purely as the compiler for illumos-gate
#
# while it builds on sparc, illumos-gate will not work with gcc14 on sparc
# so it's only useful there to find the gcc14 bugs in the source
#
# download the tarball like so
#
# wget https://github.com/illumos/gcc/archive/gcc-14.2.0-il-1.tar.gz
#

${THOME}/build/unpack gcc-14.2.0-il-1
mv gcc-gcc-14.2.0-il-1 gcc-14.2.0-il-1
cd gcc-14.2.0-il-1

#
# these are the required versions for an in-tree build
# (see contrib/download_prerequisites for the desired versions)
#
${THOME}/build/unpack mpc-1.2.1
${THOME}/build/unpack gmp-6.2.1
${THOME}/build/unpack mpfr-4.1.0
mv mpc-1.2.1 mpc
mv gmp-6.2.1 gmp
mv mpfr-4.1.0 mpfr

mkdir build
cd build

#
# configure
#

###x86
# last few flags to match OmniOS
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/opt/gcc/14.2.0 --enable-languages=c,c++,objc \
  --with-pkgversion="illumos/Tribblix 14.2.0" \
  --with-bugurl="http://www.tribblix.org/feedback.html" \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/gnu/bin/as --with-gnu-as \
  --enable-__cxa_atexit \
  --enable-initfini-array \
  --disable-libitm \
  enable_frame_pointer=yes

###sparc
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/opt/gcc/14.2.0 --enable-languages=c,c++,objc \
  --with-pkgversion="illumos/Tribblix 14.2.0" \
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
# plain install is extremely large
# with install-strip we get down to 580M
#
rm -fr /tmp/gc14
gmake DESTDIR=/tmp/gc14 install-strip
rm -fr /tmp/gc14/opt/gcc/14.2.0/lib/gcc/i386-pc-solaris2.11/14.2.0/include-fixed
${THOME}/build/create_pkg TRIBdev-illumos-gcc14 /tmp/gc14
rm -fr /tmp/gc14
