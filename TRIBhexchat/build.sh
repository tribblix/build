#!/bin/sh
#
${THOME}/build/unpack hexchat-2.16.1
cd hexchat-2.16.1

#
# disable perl for now as it's never worked
#
# we ought to pick up the 64-bit python, but while the module builds
# that gets symbol errors at runtime we ought to look at
#
# buildtype=plain avoids SSP failures
env AR=/usr/bin/ar PATH=/usr/gnu/bin:$PATH PKG_CONFIG_PATH=/usr/lib/`$THOME/build/getarch`/pkgconfig LDFLAGS="-lsocket -lnsl" meson build -Dwith-lua=false -Dwith-sysinfo=false -Dprefix=/usr -Dbuildtype=plain -Dc_args=-m64 -Dcpp_args=-m64 -Dc_link_args="-m64 -lsocket -lnsl" -Dcpp_link_args=-m64 -Dwith-perl=false -Dwith-python=false -Dlibcanberra=disabled
env PATH=/usr/gnu/bin:$PATH ninja -C build
rm -fr /tmp/hh
env DESTDIR=/tmp/hh PATH=/usr/gnu/bin:$PATH ninja -C build install
${THOME}/build/create_pkg TRIBhexchat /tmp/hh
rm -fr /tmp/hh
