#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this gcc10 build is derived from the illumos gcc10 build, and should be kept
# in sync with it. This package differs from the base illumos version in that
# it (a) ships fortran, and (b) has the runtime components split out
#
#

#
# this build patches the base gcc download rather than using the
# pre-patched illumos tarball
#
${THOME}/build/unpack gcc-10.3.0
cd gcc-10.3.0

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
../configure --prefix=/usr/versions/gcc-10 --enable-languages=c,c++,objc \
  --with-pkgversion="illumos/Tribblix 10.3.0" \
  --with-bugurl="http://www.tribblix.org/feedback.html" \
  --with-slibdir=/usr/lib \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/gnu/bin/as --with-gnu-as \
  --with-diagnostics-urls=auto-if-env \
  --enable-__cxa_atexit \
  --enable-initfini-array \
  --disable-libitm \
  enable_frame_pointer=yes


###sparc
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/usr/versions/gcc-10 --enable-languages=c,c++,objc \
  --with-pkgversion="illumos/Tribblix 10.3.0" \
  --with-bugurl="http://www.tribblix.org/feedback.html" \
  --with-slibdir=/usr/lib \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/ccs/bin/as --without-gnu-as \
  --with-diagnostics-urls=auto-if-env \
  --enable-__cxa_atexit \
  --disable-libitm \
  enable_frame_pointer=yes


cd ..

#
# configure fortran
#
cd fbuild

###x86
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/usr/versions/gcc-10 --enable-languages=fortran \
  --with-pkgversion="illumos/Tribblix 10.3.0" \
  --with-bugurl="http://www.tribblix.org/feedback.html" \
  --with-slibdir=/usr/lib \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/gnu/bin/as --with-gnu-as \
  --with-diagnostics-urls=auto-if-env \
  --enable-__cxa_atexit \
  --enable-initfini-array \
  --disable-libitm \
  enable_frame_pointer=yes

###sparc
env MSGFMT=/usr/gnu/bin/msgfmt GMSGFMT=/usr/gnu/bin/msgfmt PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -Bdirect -i" \
../configure --prefix=/usr/versions/gcc-10 --enable-languages=fortran \
  --with-pkgversion="illumos/Tribblix 10.3.0" \
  --with-bugurl="http://www.tribblix.org/feedback.html" \
  --with-slibdir=/usr/lib \
  --without-gnu-ld --with-ld=/usr/bin/ld \
  --with-as=/usr/ccs/bin/as --without-gnu-as \
  --with-diagnostics-urls=auto-if-env \
  --enable-__cxa_atexit \
  --disable-libitm \
  enable_frame_pointer=yes

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
# plain install is ~1.1G on x86
# with install-strip we get down to 372M
#
rm -fr /tmp/gc10
cd build
gmake DESTDIR=/tmp/gc10 install-strip
rm -fr /tmp/gc10/usr/versions/gcc-10/lib/gcc/i386-pc-solaris2.11/10.3.0/include-fixed
rm -fr /tmp/gc10/usr/versions/gcc-10/lib/gcc/sparc-sun-solaris2.11/10.3.0/include-fixed
cd ..
rm -fr /tmp/gc10f
cd fbuild
gmake DESTDIR=/tmp/gc10f install-strip
rm -fr /tmp/gc10f/usr/versions/gcc-10/lib/gcc/i386-pc-solaris2.11/10.3.0/include-fixed
rm -fr /tmp/gc10f/usr/versions/gcc-10/lib/gcc/sparc-sun-solaris2.11/10.3.0/include-fixed
cd ..

#
# deduplicate: remove anything from the fortran build that's present in
# the regular build
#
cd /tmp/gc10f
/bin/rm `cd ../gc10 ; find .`
/bin/rmdir `find . -xdev -depth -type d`

#
# put runtime libraries into the default path
# libquadmath is a fortran runtime dependency
#
cd /tmp/gc10
mkdir -p usr/lib/amd64
mv usr/versions/gcc-10/lib/libstdc++.so* usr/lib
mv usr/versions/gcc-10/lib/amd64/libstdc++.so* usr/lib/amd64
mv usr/versions/gcc-10/lib/libssp.so* usr/lib
mv usr/versions/gcc-10/lib/amd64/libssp.so* usr/lib/amd64
mv usr/versions/gcc-10/lib/libquadmath.so* usr/lib
mv usr/versions/gcc-10/lib/amd64/libquadmath.so* usr/lib/amd64
cd usr/versions/gcc-10/lib
ln -s ../../../lib/libssp.so* .
ln -s ../../../lib/libstdc++.so* .
ln -s ../../../lib/libquadmath.so* .
cd amd64
ln -s ../../../../lib/amd64/libssp.so* .
ln -s ../../../../lib/amd64/libstdc++.so* .
ln -s ../../../../lib/amd64/libquadmath.so* .

cd /tmp/gc10f
mkdir -p usr/lib/amd64
mv usr/versions/gcc-10/lib/libgfortran.so* usr/lib
mv usr/versions/gcc-10/lib/amd64/libgfortran.so* usr/lib/amd64
cd usr/versions/gcc-10/lib
ln -s ../../../lib/libgfortran.so* .
cd amd64
ln -s ../../../../lib/amd64/libgfortran.so* .

#
# or for sparc
#
cd /tmp/gc10
mkdir -p usr/lib/sparcv9
mv usr/versions/gcc-10/lib/libstdc++.so* usr/lib
mv usr/versions/gcc-10/lib/sparcv9/libstdc++.so* usr/lib/sparcv9
mv usr/versions/gcc-10/lib/libssp.so* usr/lib
mv usr/versions/gcc-10/lib/sparcv9/libssp.so* usr/lib/sparcv9
cd usr/versions/gcc-10/lib
ln -s ../../../lib/libssp.so* .
ln -s ../../../lib/libstdc++.so* .
cd sparcv9
ln -s ../../../../lib/sparcv9/libssp.so* .
ln -s ../../../../lib/sparcv9/libstdc++.so* .

cd /tmp/gc10f
mkdir -p usr/lib/sparcv9
mv usr/versions/gcc-10/lib/libgfortran.so* usr/lib
mv usr/versions/gcc-10/lib/sparcv9/libgfortran.so* usr/lib/sparcv9
cd usr/versions/gcc-10/lib
ln -s ../../../lib/libgfortran.so* .
cd sparcv9
ln -s ../../../../lib/sparcv9/libgfortran.so* .



#
# we also have to fix any .la files that refer to the original unrelocated
# paths for the files we moved
#
cd /tmp/gc10
sed -i s:/usr/versions/gcc-10/lib:/usr/lib: usr/versions/gcc-10/lib/libssp.la
sed -i s:/usr/versions/gcc-10/lib:/usr/lib: usr/versions/gcc-10/lib/libquadmath.la
sed -i s:/usr/versions/gcc-10/lib:/usr/lib: usr/versions/gcc-10/lib/libstdc++.la
sed -i s:/usr/versions/gcc-10/lib:/usr/lib: usr/versions/gcc-10/lib/*/libssp.la
sed -i s:/usr/versions/gcc-10/lib:/usr/lib: usr/versions/gcc-10/lib/*/libquadmath.la
sed -i s:/usr/versions/gcc-10/lib:/usr/lib: usr/versions/gcc-10/lib/*/libstdc++.la
sed -i "s:'/usr/versions/gcc-10/lib'/libstdc++.la:-lstdc++:" usr/versions/gcc-10/lib/libasan.la
sed -i "s:'/usr/versions/gcc-10/lib/amd64'/libstdc++.la:-lstdc++:" usr/versions/gcc-10/lib/*/libasan.la
sed -i "s:'/usr/versions/gcc-10/lib/sparcv9'/libstdc++.la:-lstdc++:" usr/versions/gcc-10/lib/*/libasan.la
sed -i "s:'/usr/versions/gcc-10/lib'/libstdc++.la:-lstdc++:" usr/versions/gcc-10/lib/libubsan.la
sed -i "s:'/usr/versions/gcc-10/lib/amd64'/libstdc++.la:-lstdc++:" usr/versions/gcc-10/lib/*/libubsan.la
sed -i "s:'/usr/versions/gcc-10/lib/sparcv9'/libstdc++.la:-lstdc++:" usr/versions/gcc-10/lib/*/libubsan.la
sed -i "s:'/usr/versions/gcc-10/lib'/libstdc++.la:-lstdc++:" usr/versions/gcc-10/lib/libcc1.la
sed -i "s:'/usr/versions/gcc-10/lib'/libstdc++.la:-lstdc++:" usr/versions/gcc-10/lib/gcc/*-solaris2.11/10.3.0/plugin/libcc1plugin.la
sed -i "s:'/usr/versions/gcc-10/lib'/libstdc++.la:-lstdc++:" usr/versions/gcc-10/lib/gcc/*-solaris2.11/10.3.0/plugin/libcp1plugin.la

cd /tmp/gc10f
sed -i "s:'/usr/versions/gcc-10/lib'/libquadmath.la:-lquadmath:" usr/versions/gcc-10/lib/libgfortran.la
sed -i "s:'/usr/versions/gcc-10/lib/amd64'/libquadmath.la:-lquadmath:" usr/versions/gcc-10/lib/amd64/libgfortran.la
sed -i s:/usr/versions/gcc-10/lib:/usr/lib: usr/versions/gcc-10/lib/libgfortran.la
sed -i s:/usr/versions/gcc-10/lib:/usr/lib: usr/versions/gcc-10/lib/*/libgfortran.la

#
# we make 4 packages
# - runtime, compiler
# - fortran, the rest
# so shuffle the pieces around into 4 trees
#
mkdir -p /tmp/g10-{c,r}/usr /tmp/g10f-{c,r}/usr
mv /tmp/gc10/usr/lib /tmp/g10-r/usr
mv /tmp/gc10/usr/versions /tmp/g10-c/usr
mv /tmp/gc10f/usr/lib /tmp/g10f-r/usr
mv /tmp/gc10f/usr/versions /tmp/g10f-c/usr
#
# at this point, /tmp/gc10 and /tmp/gc10f should contain nothing but an empty usr
#

#
# add convenience symlinks for the compilers
#
mkdir -p /tmp/g10{,f}-c/usr/bin
cd /tmp/g10-c/usr/bin
ln -s ../../usr/versions/gcc-10/bin/c++ .
ln -s ../../usr/versions/gcc-10/bin/cpp .
ln -s ../../usr/versions/gcc-10/bin/g++ .
ln -s ../../usr/versions/gcc-10/bin/gcc .
cd /tmp/g10f-c/usr/bin
ln -s ../../usr/versions/gcc-10/bin/gfortran .

#
# and put man pages somewhere more obvious
# the man pages appear to be blank in this build
#
#cd /tmp/g10f-c
#mkdir -p usr/share
#mv usr/versions/gcc-10/share/man usr/share
#cd /tmp/g10-c
#mkdir -p usr/share/man/man1
#mv usr/versions/gcc-10/share/man/man1/gcc.1 usr/share/man/man1
#mv usr/versions/gcc-10/share/man/man1/g++.1 usr/share/man/man1
#mv usr/versions/gcc-10/share/man/man1/cpp.1 usr/share/man/man1

#
# clean up
#
cd /tmp/g10-c
rm -fr usr/versions/gcc-10/share/info
cd /tmp/g10f-c
rm -fr usr/versions/gcc-10/share/info

#
# build the compiler packages
#
${THOME}/build/create_pkg TRIBv-gcc10 /tmp/g10-c
${THOME}/build/create_pkg TRIBv-gfortran10 /tmp/g10f-c

#
# the runtime packages keep the old names
# which is, perhaps, misleading
#
${THOME}/build/create_pkg TRIBgcc4runtime /tmp/g10-r
${THOME}/build/create_pkg TRIBgfortran4runtime /tmp/g10f-r

rm -fr /tmp/gc10
rm -fr /tmp/gc10f
rm -fr /tmp/g10{,f}-c
rm -fr /tmp/g10{,f}-r
