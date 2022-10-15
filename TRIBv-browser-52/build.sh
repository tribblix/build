#!/bin/sh
#
# download has incorrect name
# mv firefox-52.9.0esr.source.tar.xz firefox-52.9.0esr.tar.xz
#
# needs autoconf-2.13, install the TRIBv-autoconf-213 package
#

#
# these are the notes from the firefox build, they may not work
# now as Tribblix has moved on in 4 years
#

$THOME/build/unpack firefox-52.9.0esr

cd  firefox-52.9.0esr
autoconf-2.13
cd js/src
autoconf-2.13
cd ../../..


mkdir ffbuild
cd ffbuild

cp $THOME/build/patches/ff52/gld-wrapper .
chmod a+x gld-wrapper

env CC=gcc CXX=g++ \
GLD_WRAPPER=`pwd`/gld-wrapper \
MOZILLA_OFFICIAL=1 MOZ_PKG_FORMAT=XZ MOZILLA_PKG_NAME=firefox \
MOZ_TELEMETRY_REPORTING=1 MOZ_PACKAGE_JSSHELL=1 \
PKG_SKIP_STRIP=1 SHELL=/bin/bash \
../firefox-52.9.0esr/configure \
  --enable-application=browser \
  --disable-official-branding \
  --disable-updater \
  --enable-debug-symbols=no \
  --enable-update-channel=esr \
  --disable-tests \
  --enable-jemalloc \
  --disable-dtrace \
  --disable-crashreporter \
  --disable-pulseaudio \
  --with-intl-api \
  --disable-debug \
  --enable-default-toolkit=cairo-gtk2 \
  --disable-gconf \
  --enable-system-pixman \
  --with-system-bz2 \
  --with-system-zlib \
  --with-system-jpeg \
  --enable-system-ffi \
  --enable-strip \
  --enable-install-strip \
  --enable-optimize \
  --enable-safe-browsing \
  --enable-url-classifier \
  --enable-startup-notification \
  --prefix=/usr/versions/ff-52.9.0esr

env GLD_WRAPPER=`pwd`/gld-wrapper gmake -j 12 MOZ_DEBUG_FLAGS=""

#
# NOTE:
#
# There's something that sticks "no" into the command line flags.
# You'll need to define some or all of
#
# OS_CFLAGS="-Wall -Wempty-body -Wignored-qualifiers -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -fno-strict-aliasing -DXP_UNIX -DSOLARIS -ffunction-sections -fdata-sections -fno-math-errno -pthread -pipe"
# OS_CXXFLAGS="-Wall -Wc++11-compat -Wempty-body -Wignored-qualifiers -Woverloaded-virtual -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wwrite-strings -Wno-invalid-offsetof -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -fno-exceptions -fno-strict-aliasing -DXP_UNIX -DSOLARIS -fno-rtti -ffunction-sections -fdata-sections -fno-exceptions -fno-math-errno -pthread -pipe"
# ASFLAGS="-fPIC -Wa,--noexecstack -include /export/home/ptribble/ud/ffbuild/mozilla-config.h -DMOZILLA_CLIENT"
#
# for some (but not all) of the build. There are various places that expect
# different values and will just go off the rails.


rm -fr /tmp/ff
env GLD_WRAPPER=`pwd`/gld-wrapper gmake install DESTDIR=/tmp/ff

$THOME//build/create_pkg TRIBv-browser-52 /tmp/ff
rm -fr /tmp/ff
