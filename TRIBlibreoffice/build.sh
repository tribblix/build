#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/unpack libreoffice-7.6.7.2
cd libreoffice-7.6.7.2
$THOME/build/patches/libreoffice-7.6.7.2.preconf

#
# if you have a previous build, copy the contents of external/tarballs
# to reduce the amount of stuff that needs to be downloaded
#
# mkdir external/tarballs
# cp ../libreoffice-7.2.7.2/external/tarballs/* external/tarballs/
#

#
# despite us now having a native SSP, the build falls over in that area
# with an unresolved symbol, even if I pass the library along
#
sed -i '/stack-protector-strong/d' ./solenv/gbuild/platform/com_GCC_defs.mk

#
# there are a number of external libraries that we need to build
# separately, as if they're created by the libreoffice build then
# they don't work at all (link failures)
#
# this covers: libzmf libvisio librevenge
#
# note that they require cppunit as a build dependency, make sure it
# gets uninstalled as if it's installed the libreoffice build fails
#
# we must use the system libpng as libreoffice links against the rest
# of the desktop stack (cairo in particular) which links against the
# system libpng and we have to make sure everything loaded into the
# process uses the same one
#

#
# we can now use our openssl again
#

#
# need to ensure we find python3.12, which is 64-bit
#
# note that we specify 64-bit in multiple ways, as there are multiple
# components which pick up on different things
#

env CFLAGS="-m64" LDFLAGS="-m64" CXXFLAGS="-m64" \
CC="gcc -m64" CXX="g++ -m64" AFLAGS="-m64" \
PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig \
PATH=/usr/gnu/bin:/usr/versions/python-3.12/bin:/usr/bin/amd64:$PATH \
bash ./configure \
--prefix=/usr/versions/libreoffice-7 \
--without-java \
--without-doxygen \
--with-tls="openssl" \
--with-system-nss \
--disable-postgresql-sdbc \
--disable-firebird-sdbc \
--disable-pdfium \
--with-system-librevenge \
--with-system-libzmf \
--with-system-zlib \
--with-system-libpng \
--with-system-jpeg \
--with-system-libvisio \
--with-system-curl \
--with-system-lcms2 \
--with-system-epoxy \
--with-system-openssl \
--with-system-harfbuzz \
--with-system-graphite \
--disable-ldap \
--disable-odk \
--with-vendor="Tribblix" \
--enable-release-build=yes \
--build=amd64-pc-solaris2.11 \
--with-system-icu

#
# a regular make will run the checks; these will almost always fail,
# regardless of platform, so build without checks
#
env CFLAGS="-m64" LDFLAGS="-m64" CXXFLAGS="-m64" \
CC="gcc -m64" CXX="g++ -m64" AFLAGS="-m64" \
PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig \
PATH=/usr/gnu/bin:/usr/versions/python-3.12/bin:/usr/bin/amd64:$PATH \
/usr/gnu/bin/make -j 6 VERBOSE=1 gb_SUPPRESS_TESTS=x

#
# need distro-pack-install to get things assembled the right way
#
env PATH=/usr/gnu/bin:/usr/versions/python-3.12/bin:$PATH /usr/gnu/bin/make distro-pack-install DESTDIR=/tmp/loo
${THOME}/build/create_pkg TRIBlibreoffice /tmp/loo
