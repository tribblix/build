#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# download the tarball like so
#
# wget https://github.com/illumos/gcc/archive/gcc-4.4.4-il-4.tar.gz
#

${THOME}/build/unpack gcc-4.4.4-il-4
mv gcc-gcc-4.4.4-il-4 gcc-4.4.4-il-4
cd gcc-4.4.4-il-4

# needed for sparc
gpatch -p1 < ${THOME}/build/patches/566b8eb0ae46d81c5eefda2dfd5c3c375fe77e4d.patch

${THOME}/build/unpack mpc-0.8.1
${THOME}/build/unpack gmp-4.3.2
${THOME}/build/unpack mpfr-2.4.2
mv mpc-0.8.1 mpc
mv gmp-4.3.2 gmp
mv mpfr-2.4.2 mpfr

mkdir build
cd build

#
# sparc is --without-gnu-as --with-as=/usr/ccs/bin/as
#
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/opt/gcc/4.4.4 --enable-languages=c,c++,objc \
  --with-pkgversion="illumos/Tribblix" \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/gnu/bin/as --with-gnu-as
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
gmake -j 8

rm -fr /tmp/gc4
gmake DESTDIR=/tmp/gc4 install
rm -fr /tmp/gc4/opt/gcc/4.4.4/lib/gcc/i386-pc-solaris2.11/4.4.4/include-fixed
${THOME}/build/create_pkg TRIBdev-illumos-gcc /tmp/gc4
rm -fr /tmp/gc4
