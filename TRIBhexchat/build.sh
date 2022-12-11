#!/bin/sh
#
${THOME}/build/unpack hexchat-2.16.1
cd hexchat-2.16.1

#
# this is a 64-bit build, so disable perl for now as that's
# 32-bit (and never worked)
#
# we ought to pick up the 64-bit python3.9, but while the module builds
# that gets symbol errors at runtime we ought to look at
#
# buildtype=plain avoids SSP failures
env PKG_CONFIG_PATH=/usr/lib/amd64/pkgconfig LDFLAGS="-lsocket -lnsl" meson build -Dwith-lua=false -Dwith-sysinfo=false -Dprefix=/usr -Dbuildtype=plain -Dc_args=-m64 -Dcpp_args=-m64 -Dc_link_args="-m64 -lsocket -lnsl" -Dcpp_link_args=-m64 -Dwith-perl=false
env PATH=/usr/gnu/bin:$PATH ninja -C build
rm -fr /tmp/hh
env DESTDIR=/tmp/hh PATH=/usr/gnu/bin:$PATH ninja -C build install
${THOME}/build/create_pkg TRIBhexchat /tmp/hh
rm -fr /tmp/hh
