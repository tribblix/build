#!/bin/sh
#
# 
#
$THOME/build/unpack libreoffice-7.2.5.2
cd libreoffice-7.2.5.2

#
# if you have a previous build, copy the contents of external/tarballs
# to reduce the amount of stuff that needs to be downloaded
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

env PATH=/usr/gnu/bin:$PATH ./configure --prefix=/usr/versions/libreoffice-7 \
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
--with-system-libvisio \
--with-system-curl \
--with-system-lcms2 \
--with-system-epoxy \
--with-system-openssl \
--disable-odk \
--with-vendor="Tribblix" --enable-release-build=yes

#
# despite needing to build against its own harfbuzz, the build tries
# to accidentally link against the system one which isn't compatible
# so make sure it's moved out of the way
#
# as root
# 
# rm /usr/lib/libharfbuzz.so
#

#
# the same is true of icu
#
# as root
#
# cd /usr/lib ; rm libicui18n.so libicuuc.so
#

#
# a regular make will run the checks; these will almost always fail,
# regardless of platform, so build without checks
#
/usr/gnu/bin/make -j 4 build-nocheck

#
# undo the harfbuzz and icu tweaks
#
# as root
#
# cd /usr/lib ; ln -s libharfbuzz.so.0.10900.0 libharfbuzz.so
# cd /usr/lib ; ln -s libicui18n.so.50.1 libicui18n.so
# cd /usr/lib ; ln -s libicuuc.so.50.1 libicuuc.so
#

#
# need distro-pack-install to get things assembled the right way
#
/usr/gnu/bin/make distro-pack-install DESTDIR=/tmp/loo
${THOME}/build/create_pkg TRIBlibreoffice /tmp/loo
