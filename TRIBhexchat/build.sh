#!/bin/sh
#
${THOME}/build/unpack hexchat-2.16.0
cd hexchat-2.16.0

# buildtype=plain avoids SSP failures
env LDFLAGS="-lsocket -lnsl" meson build -Dwith-lua=false -Dwith-sysinfo=false -Dprefix=/usr -Dbuildtype=plain
env PATH=/usr/gnu/bin:$PATH ninja -C build
env DESTDIR=/tmp/hh PATH=/usr/gnu/bin:$PATH ninja -C build install
${THOME}/build/create_pkg TRIBhexchat /tmp/hh
