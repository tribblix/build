#!/bin/sh
#
# the original package was poorly named and located, as it had
# 483 in both the package names and the install prefix. I keep
# 483 for any 4.8.x for compatibility
#
# there must be a better way to do this
# we build gcc 3 times, once for C/C++, once for fortran, once for go
# and remove common files from the fortran and go packages
#
# the original 4.8.3 build disabled ssp (-fstack-protector)
# this build creates the ssp files but ships them separately
# as I haven't yet got a fully fleshed out story for how
# future gcc upgrades will be handled
#

# just in case someone thinks this is a shell script
exit 0

#
# the following are notes, cut and paste
#

mkdir ~/gcc
cd ~/gcc
${THOME}/build/unpack gcc-4.8.5
cd gcc-4.8.5
${THOME}/build/unpack mpc-0.8.1
${THOME}/build/unpack gmp-4.3.2
${THOME}/build/unpack mpfr-2.4.2
mv mpc-0.8.1 mpc
mv gmp-4.3.2 gmp
mv mpfr-2.4.2 mpfr
cd ..
mkdir t48{,f,go}

FOR x86:

cd t48
env PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -i" ../gcc-4.8.5/configure --prefix=/usr/versions/gcc-4.8.3 --enable-languages="c,c++,objc" --disable-libgomp --disable-libquadmath-support --disable-libquadmath --with-slibdir=/usr/lib --without-gnu-ld --with-ld=/bin/ld --with-as=/usr/gnu/bin/as --with-gnu-as
env PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -i" gmake -j 12
cd ..

cd t48f
env PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -i" ../gcc-4.8.5/configure --prefix=/usr/versions/gcc-4.8.3 --enable-languages="fortran" --disable-libgomp --disable-libquadmath-support --disable-libquadmath --with-slibdir=/usr/lib --without-gnu-ld --with-ld=/bin/ld --with-as=/usr/gnu/bin/as --with-gnu-as
env PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -i" gmake -j 12
cd ..

cd t48go
env PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -i" ../gcc-4.8.5/configure --prefix=/usr/versions/gcc-4.8.3 --enable-languages="go" --disable-libgomp --disable-libquadmath-support --disable-libquadmath --with-slibdir=/usr/lib --without-gnu-ld --with-ld=/bin/ld --with-as=/usr/gnu/bin/as --with-gnu-as
env PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -i" gmake -j 12
cd ..

Now, sparc is odd. The existing compiler for sparc has:
--with-gnu-ld --with-ld=/usr/gnu/bin/ld
whereas we use the native ld on x86
And the OI recipe uses the native as. Odd.
Initial attempt is to run with the above verbatim. Because the above rules
are what the gcc docs say to use.

OK, so the sparc build fails with this if we use the sun ld:

ld: fatal: relocation error: R_SPARC_32: file ../src/c++11/.libs/libc++11convenience.a(fstream-inst.o): symbol __gxx_personality_v0: offset 0xf8523 is non-aligned

FOR SPARC:

cd t48
env PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -i" ../gcc-4.8.5/configure --prefix=/usr/versions/gcc-4.8.3 --enable-languages="c,c++,objc" --disable-libgomp --disable-libquadmath-support --disable-libquadmath --with-slibdir=/usr/lib --with-gnu-ld --with-ld=/usr/gnu/bin/ld --with-as=/usr/gnu/bin/as --with-gnu-as
env PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -i" gmake -j 12
cd ..

cd t48f
env PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -i" ../gcc-4.8.5/configure --prefix=/usr/versions/gcc-4.8.3 --enable-languages="fortran" --disable-libgomp --disable-libquadmath-support --disable-libquadmath --with-slibdir=/usr/lib --with-gnu-ld --with-ld=/usr/gnu/bin/ld --with-as=/usr/gnu/bin/as --with-gnu-as
env PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -i" gmake -j 12
cd ..

cd t48go
env PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -i" ../gcc-4.8.5/configure --prefix=/usr/versions/gcc-4.8.3 --enable-languages="go" --disable-libgomp --disable-libquadmath-support --disable-libquadmath --with-slibdir=/usr/lib --with-gnu-ld --with-ld=/usr/gnu/bin/ld --with-as=/usr/gnu/bin/as --with-gnu-as
env PATH=${PATH}:/usr/gnu/bin LD_OPTIONS="-zignore -zcombreloc -i" gmake -j 12
cd ..

Back to generic-ish instructions

cd t48
gmake DESTDIR=/tmp/gc1 install-strip
cd ..
cd t48f
gmake DESTDIR=/tmp/gc2 install-strip
cd ..
cd t48go
gmake DESTDIR=/tmp/gc3 install-strip
cd ..

kill the borked-includes
clean the fortran and go installs of duplicates from the baseline
remove empty directories

cd /tmp/gc1/usr
rm -fr versions/gcc-4.8.3/lib/gcc/i386-pc-solaris2.11/4.8.5/include-fixed
cd /tmp/gc2/usr
rm -fr versions/gcc-4.8.3/lib/gcc/i386-pc-solaris2.11/4.8.5/include-fixed
cd /tmp/gc3/usr
rm -fr versions/gcc-4.8.3/lib/gcc/i386-pc-solaris2.11/4.8.5/include-fixed
cd /tmp/gc1
/bin/rmdir `find . -xdev -depth -type d`
cd /tmp/gc2
/bin/rm `cd ../gc1 ; find .`
/bin/rmdir `find . -xdev -depth -type d`
cd /tmp/gc3
/bin/rm `cd ../gc1 ; find .`
/bin/rmdir `find . -xdev -depth -type d`

shuffle into default locations

cd /tmp/gc1
mkdir -p usr/lib/amd64
mv usr/versions/gcc-4.8.3/lib/libstdc++.so* usr/lib
mv usr/versions/gcc-4.8.3/lib/amd64/libstdc++.so* usr/lib/amd64
mv usr/versions/gcc-4.8.3/lib/libssp.so* usr/lib
mv usr/versions/gcc-4.8.3/lib/amd64/libssp.so* usr/lib/amd64
cd usr/versions/gcc-4.8.3/lib
ln -s ../../../lib/libssp.so* .
ln -s ../../../lib/libstdc++.so* .
cd amd64
ln -s ../../../../lib/amd64/libssp.so* .
ln -s ../../../../lib/amd64/libstdc++.so* .
cd /tmp/gc2
mkdir -p usr/lib/amd64
mv usr/versions/gcc-4.8.3/lib/libgfortran.so* usr/lib
mv usr/versions/gcc-4.8.3/lib/amd64/libgfortran.so* usr/lib/amd64
cd usr/versions/gcc-4.8.3/lib
ln -s ../../../lib/libgfortran.so* .
cd amd64
ln -s ../../../../lib/amd64/libgfortran.so* .

Fix up errant la files

cd /tmp/gc1
gsed -i s:/usr/versions/gcc-4.8.3/lib/amd64:/usr/lib/amd64: usr/versions/gcc-4.8.3/lib/amd64/libstdc++.la
gsed -i s:/usr/versions/gcc-4.8.3/lib:/usr/lib: usr/versions/gcc-4.8.3/lib/libstdc++.la
gsed -i s:/usr/versions/gcc-4.8.3/lib/amd64:/usr/lib/amd64: usr/versions/gcc-4.8.3/lib/amd64/libssp.la
gsed -i s:/usr/versions/gcc-4.8.3/lib:/usr/lib: usr/versions/gcc-4.8.3/lib/libssp.la
cd /tmp/gc2
gsed -i s:/usr/versions/gcc-4.8.3/lib/amd64:/usr/lib/amd64: usr/versions/gcc-4.8.3/lib/amd64/libgfortran.la 
gsed -i s:/usr/versions/gcc-4.8.3/lib:/usr/lib: usr/versions/gcc-4.8.3/lib/libgfortran.la 

mkdir -p /tmp/g48-{c,r}/usr /tmp/g48f-{c,r}/usr
mv /tmp/gc1/usr/lib /tmp/g48-r/usr
mv /tmp/gc1/usr/versions /tmp/g48-c/usr
mv /tmp/gc2/usr/lib /tmp/g48f-r/usr
mv /tmp/gc2/usr/versions /tmp/g48f-c/usr

[/tmp/gc1 and /tmp/gc2 should contain nothing but an empty usr now.
/tmp/gc3 just contains gccgo.]

Separate out ssp

mkdir -p /tmp/g48-s/usr/lib/amd64
mkdir -p /tmp/g48-s/usr/versions/gcc-4.8.3/lib/amd64
mkdir -p /tmp/g48-s/usr/versions/gcc-4.8.3/lib/gcc/i386-pc-solaris2.11/4.8.5/include
mv /tmp/g48-r/usr/lib/amd64/*ssp* /tmp/g48-s/usr/lib/amd64
mv /tmp/g48-r/usr/lib/*ssp* /tmp/g48-s/usr/lib
mv /tmp/g48-c/usr/versions/gcc-4.8.3/lib/amd64/*ssp* /tmp/g48-s/usr/versions/gcc-4.8.3/lib/amd64
mv /tmp/g48-c/usr/versions/gcc-4.8.3/lib/*ssp* /tmp/g48-s/usr/versions/gcc-4.8.3/lib
mv /tmp/g48-c/usr/versions/gcc-4.8.3/lib/gcc/i386-pc-solaris2.11/4.8.5/include/ssp /tmp/g48-s/usr/versions/gcc-4.8.3/lib/gcc/i386-pc-solaris2.11/4.8.5/include

Make convenience symlinks

mkdir /tmp/g48-c/usr/bin
cd /tmp/g48-c/usr/bin
ln -s ../../usr/versions/gcc-4.8.3/bin/gcc .
ln -s ../../usr/versions/gcc-4.8.3/bin/cpp .
ln -s ../../usr/versions/gcc-4.8.3/bin/c++ .
ln -s ../../usr/versions/gcc-4.8.3/bin/g++ .
mkdir /tmp/g48f-c/usr/bin
cd /tmp/g48f-c/usr/bin
ln -s ../../usr/versions/gcc-4.8.3/bin/gfortran .
mkdir /tmp/gc3/usr/bin
cd /tmp/gc3/usr/bin
ln -s ../../usr/versions/gcc-4.8.3/bin/gccgo	.

build packages

${THOME}/build/create_pkg TRIBv-gcc-483 /tmp/g48-c
${THOME}/build/create_pkg TRIBgcc4runtime /tmp/g48-r
${THOME}/build/create_pkg TRIBv-gfortran-483 /tmp/g48f-c
${THOME}/build/create_pkg TRIBgfortran4runtime /tmp/g48f-r
${THOME}/build/create_pkg TRIBv-gccgo-483 /tmp/gc3
${THOME}/build/create_pkg TRIBv-gcc-483-ssp /tmp/g48-s
