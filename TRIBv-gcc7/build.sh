#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this gcc7 build is derived from the illumos gcc7 build, and should be kept
# in sync with it. This package differs from the base illumos version in that
# it (a) ships fortran, and (b) has the runtime components split out
#
#
# download the tarball like so
#
# wget https://github.com/illumos/gcc/archive/gcc-7.3.0-il-4.tar.gz
#

${THOME}/build/unpack gcc-gcc-7.3.0-il-4
mv gcc-gcc-7.3.0-il-4 gcc-7.3.0-il-4
cd gcc-7.3.0-il-4
#
# use the illumos ssp implementation to avoid pulling in gcc's libssp
# see https://github.com/illumos/gcc/pull/41
#
gpatch -p1 < ${THOME}/build/patches/27ff7246bedc81237e6bf5b5a188a7548d8bf68f.patch

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
mkdir fbuild

#
# configure
#
cd build

###x86
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/usr/versions/gcc-7 --enable-languages=c,c++,objc \
  --with-pkgversion="illumos/Tribblix 7.3.0" \
  --with-bugurl="http://www.tribblix.org/feedback.html" \
  --with-slibdir=/usr/lib \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/gnu/bin/as --with-gnu-as

###sparc
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/usr/versions/gcc-7 --enable-languages=c,c++,objc \
  --with-pkgversion="illumos/Tribblix 7.3.0" \
  --with-bugurl="http://www.tribblix.org/feedback.html" \
  --with-slibdir=/usr/lib \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/ccs/bin/as --without-gnu-as

cd ..

#
# configure fortran
#
cd fbuild

###x86
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/usr/versions/gcc-7 --enable-languages=fortran \
  --with-pkgversion="illumos/Tribblix 7.3.0" \
  --with-bugurl="http://www.tribblix.org/feedback.html" \
  --with-slibdir=/usr/lib \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/gnu/bin/as --with-gnu-as

###sparc
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/usr/versions/gcc-7 --enable-languages=fortran \
  --with-pkgversion="illumos/Tribblix 7.3.0" \
  --with-bugurl="http://www.tribblix.org/feedback.html" \
  --with-slibdir=/usr/lib \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/ccs/bin/as --without-gnu-as

cd ..

#
# build
#
# (parallel make on sparc appears busted)
#
cd build
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
gmake -j 8
cd ..
cd fbuild
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
gmake -j 8
cd ..

#
# plain install is ~700M on x86
# with install-strip we get down to 239M
#
rm -fr /tmp/gc7
cd build
gmake DESTDIR=/tmp/gc7 install-strip
rm -fr /tmp/gc7/usr/versions/gcc-7/lib/gcc/i386-pc-solaris2.11/7.3.0/include-fixed
rm -fr /tmp/gc7/usr/versions/gcc-7/lib/gcc/sparc-sun-solaris2.11/7.3.0/include-fixed
cd ..
rm -fr /tmp/gc7f
cd fbuild
gmake DESTDIR=/tmp/gc7f install-strip
rm -fr /tmp/gc7f/usr/versions/gcc-7/lib/gcc/i386-pc-solaris2.11/7.3.0/include-fixed
rm -fr /tmp/gc7f/usr/versions/gcc-7/lib/gcc/sparc-sun-solaris2.11/7.3.0/include-fixed
cd ..

#
# deduplicate: remove anything from the fortran build that's present in
# the regular build
#
cd /tmp/gc7f
/bin/rm `cd ../gc7 ; find .`
/bin/rmdir `find . -xdev -depth -type d`

#
# put runtime libraries into the default path
# libquadmath is a fortran runtime dependency
#
cd /tmp/gc7
mkdir -p usr/lib/amd64
mv usr/versions/gcc-7/lib/libstdc++.so* usr/lib
mv usr/versions/gcc-7/lib/amd64/libstdc++.so* usr/lib/amd64
mv usr/versions/gcc-7/lib/libssp.so* usr/lib
mv usr/versions/gcc-7/lib/amd64/libssp.so* usr/lib/amd64
mv usr/versions/gcc-7/lib/libquadmath.so* usr/lib
mv usr/versions/gcc-7/lib/amd64/libquadmath.so* usr/lib/amd64
cd usr/versions/gcc-7/lib
ln -s ../../../lib/libssp.so* .
ln -s ../../../lib/libstdc++.so* .
ln -s ../../../lib/libquadmath.so* .
cd amd64
ln -s ../../../../lib/amd64/libssp.so* .
ln -s ../../../../lib/amd64/libstdc++.so* .
ln -s ../../../../lib/amd64/libquadmath.so* .

cd /tmp/gc7f
mkdir -p usr/lib/amd64
mv usr/versions/gcc-7/lib/libgfortran.so* usr/lib
mv usr/versions/gcc-7/lib/amd64/libgfortran.so* usr/lib/amd64
cd usr/versions/gcc-7/lib
ln -s ../../../lib/libgfortran.so* .
cd amd64
ln -s ../../../../lib/amd64/libgfortran.so* .

#
# or for sparc
#
cd /tmp/gc7
mkdir -p usr/lib/sparcv9
mv usr/versions/gcc-7/lib/libstdc++.so* usr/lib
mv usr/versions/gcc-7/lib/sparcv9/libstdc++.so* usr/lib/sparcv9
mv usr/versions/gcc-7/lib/libssp.so* usr/lib
mv usr/versions/gcc-7/lib/sparcv9/libssp.so* usr/lib/sparcv9
cd usr/versions/gcc-7/lib
ln -s ../../../lib/libssp.so* .
ln -s ../../../lib/libstdc++.so* .
cd sparcv9
ln -s ../../../../lib/sparcv9/libssp.so* .
ln -s ../../../../lib/sparcv9/libstdc++.so* .

cd /tmp/gc7f
mkdir -p usr/lib/sparcv9
mv usr/versions/gcc-7/lib/libgfortran.so* usr/lib
mv usr/versions/gcc-7/lib/sparcv9/libgfortran.so* usr/lib/sparcv9
cd usr/versions/gcc-7/lib
ln -s ../../../lib/libgfortran.so* .
cd sparcv9
ln -s ../../../../lib/sparcv9/libgfortran.so* .



#
# we also have to fix any .la files that refer to the original unrelocated
# paths for the files we moved
#
cd /tmp/gc7
sed -i s:/usr/versions/gcc-7/lib:/usr/lib: usr/versions/gcc-7/lib/libssp.la
sed -i s:/usr/versions/gcc-7/lib:/usr/lib: usr/versions/gcc-7/lib/libquadmath.la
sed -i s:/usr/versions/gcc-7/lib:/usr/lib: usr/versions/gcc-7/lib/libstdc++.la
sed -i s:/usr/versions/gcc-7/lib:/usr/lib: usr/versions/gcc-7/lib/*/libssp.la
sed -i s:/usr/versions/gcc-7/lib:/usr/lib: usr/versions/gcc-7/lib/*/libquadmath.la
sed -i s:/usr/versions/gcc-7/lib:/usr/lib: usr/versions/gcc-7/lib/*/libstdc++.la
sed -i "s:'/usr/versions/gcc-7/lib'/libstdc++.la:-lstdc++:" usr/versions/gcc-7/lib/libcilkrts.la
sed -i "s:'/usr/versions/gcc-7/lib/amd64'/libstdc++.la:-lstdc++:" usr/versions/gcc-7/lib/*/libcilkrts.la
sed -i "s:'/usr/versions/gcc-7/lib/sparcv9'/libstdc++.la:-lstdc++:" usr/versions/gcc-7/lib/*/libcilkrts.la
sed -i "s:'/usr/versions/gcc-7/lib'/libstdc++.la:-lstdc++:" usr/versions/gcc-7/lib/libcc1.la
sed -i "s:'/usr/versions/gcc-7/lib'/libstdc++.la:-lstdc++:" usr/versions/gcc-7/lib/gcc/*-solaris2.11/7.3.0/plugin/libcc1plugin.la
sed -i "s:'/usr/versions/gcc-7/lib'/libstdc++.la:-lstdc++:" usr/versions/gcc-7/lib/gcc/*-solaris2.11/7.3.0/plugin/libcp1plugin.la

cd /tmp/gc7f
sed -i "s:'/usr/versions/gcc-7/lib'/libquadmath.la:-lquadmath:" usr/versions/gcc-7/lib/libgfortran.la
sed -i "s:'/usr/versions/gcc-7/lib/amd64'/libquadmath.la:-lquadmath:" usr/versions/gcc-7/lib/amd64/libgfortran.la
sed -i s:/usr/versions/gcc-7/lib:/usr/lib: usr/versions/gcc-7/lib/libgfortran.la
sed -i s:/usr/versions/gcc-7/lib:/usr/lib: usr/versions/gcc-7/lib/*/libgfortran.la

#
# we make 4 packages
# - runtime, compiler
# - fortran, the rest
# so shuffle the pieces around into 4 trees
#
mkdir -p /tmp/g7-{c,r}/usr /tmp/g7f-{c,r}/usr
mv /tmp/gc7/usr/lib /tmp/g7-r/usr
mv /tmp/gc7/usr/versions /tmp/g7-c/usr
mv /tmp/gc7f/usr/lib /tmp/g7f-r/usr
mv /tmp/gc7f/usr/versions /tmp/g7f-c/usr
#
# at this point, /tmp/gc7 and /tmp/gc7f should contain nothing but an empty usr
#

#
# add convenience symlinks for the compilers
#
mkdir -p /tmp/g7{,f}-c/usr/bin
cd /tmp/g7-c/usr/bin
ln -s ../../usr/versions/gcc-7/bin/c++ .
ln -s ../../usr/versions/gcc-7/bin/cpp .
ln -s ../../usr/versions/gcc-7/bin/g++ .
ln -s ../../usr/versions/gcc-7/bin/gcc .
cd /tmp/g7f-c/usr/bin
ln -s ../../usr/versions/gcc-7/bin/gfortran .

#
# and put man pages somewhere more obvious
# the man pages appear to be blank in this build
#
#cd /tmp/g7f-c
#mkdir -p usr/share
#mv usr/versions/gcc-7/share/man usr/share
#cd /tmp/g7-c
#mkdir -p usr/share/man/man1
#mv usr/versions/gcc-7/share/man/man1/gcc.1 usr/share/man/man1
#mv usr/versions/gcc-7/share/man/man1/g++.1 usr/share/man/man1
#mv usr/versions/gcc-7/share/man/man1/cpp.1 usr/share/man/man1

#
# clean up
#
cd /tmp/g7-c
rm -fr usr/versions/gcc-7/share/info
cd /tmp/g7f-c
rm -fr usr/versions/gcc-7/share/info

#
# build the compiler packages
#
${THOME}/build/create_pkg TRIBv-gcc7 /tmp/g7-c
${THOME}/build/create_pkg TRIBv-gfortran7 /tmp/g7f-c

#
# the runtime packages keep the old names
# which is, perhaps, misleading
#
${THOME}/build/create_pkg TRIBgcc4runtime /tmp/g7-r
${THOME}/build/create_pkg TRIBgfortran4runtime /tmp/g7f-r

rm -fr /tmp/gc7
rm -fr /tmp/gc7f
rm -fr /tmp/g7{,f}-c
rm -fr /tmp/g7{,f}-r
