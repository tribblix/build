#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
zap install TRIBsys-header-drm

#
# glu is now released separately, as it's static
#
$THOME/build/dobuild -64 glu-9.0.1

#
# likewise glw
# OI enable motif, which seems ... unusual
#
$THOME/build/dobuild -64 glw-8.0.0

#
# the old version we had was antiquated at 7.4.4
# Xorg builds require 9.2 or newer
# 13.0.6 isn't terribly current, but stick to it because that's what OI have
#
# note that running make clean breaks the build
#
# OI currently have
# --with-dri-drivers='i915 i965 r200 radeon swrast'
# but the legacy version only has swrast, the r200 and radeon being
# supplied by the ati driver, so I remove r200 and radeon for now
# to avoid install conflicts
#
# sparc just needs --with-dri-drivers='swrast'
#

$THOME/build/unpack -64 mesa-13.0.6

cd mesa-13.0.6
autoreconf -fi
./configure --prefix=/usr \
--disable-dri3 \
--with-dri-driverdir=/usr/lib/xorg/modules/dri \
--with-dri-drivers='i915 i965 swrast' \
--disable-gallium-llvm \
--enable-egl \
--enable-gbm \
--with-gallium-drivers= \
--enable-shared-glapi \
--enable-texture-float \
--enable-osmesa \
--with-sha1=libcrypto \
--disable-glx-tls \
--disable-shader-cache \
--sysconfdir=/etc \
--disable-dependency-tracking \
CFLAGS="-D__EXTENSIONS__ -O2"
gmake -j 4
cd ..

cd mesa-13.0.6-64bit
autoreconf -fi
env PKG_CONFIG_PATH=/usr/lib/`$THOME/build/getarch`/pkgconfig PATH=/usr/bin/`$THOME/build/getarch`:$PATH \
./configure --prefix=/usr \
--libdir=/usr/lib/`$THOME/build/getarch` \
--disable-dri3 \
--with-dri-driverdir=/usr/lib/xorg/modules/dri/`$THOME/build/getarch` \
--with-dri-drivers='i915 i965 swrast' \
--disable-gallium-llvm \
--enable-egl \
--enable-gbm \
--with-gallium-drivers= \
--enable-shared-glapi \
--enable-texture-float \
--enable-osmesa \
--with-sha1=libcrypto \
--disable-glx-tls \
--disable-shader-cache \
--sysconfdir=/etc \
--disable-dependency-tracking \
CFLAGS="-D__EXTENSIONS__ -m64 -O2" \
CXXFLAGS="-m64 -O2" \
LDFLAGS="-m64"
gmake -j 4
cd ..

${THOME}/build/genpkg TRIBx11-lib-mesa glu-9.0.1 glw-8.0.0 mesa-13.0.6
