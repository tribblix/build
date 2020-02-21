#!/bin/sh
#
${THOME}/build/unpack hexchat-2.14.3
cd hexchat-2.14.3
sed -i '/pie: true/d' src/fe-gtk/meson.build

env LDFLAGS="-lsocket -lnsl" meson build -Dwith-libproxy=false -Dwith-libcanberra=false -Dwith-lua=false -Dwith-sysinfo=false -Dprefix=/usr
env PATH=/usr/gnu/bin:$PATH ninja -C build
env DESTDIR=/tmp/hh PATH=/usr/gnu/bin:$PATH ninja -C build install
${THOME}/build/create_pkg TRIBhexchat /tmp/hh
