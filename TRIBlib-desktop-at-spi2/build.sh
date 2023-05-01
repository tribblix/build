#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu at-spi2-core-2.24.1 -C "--disable-introspection --with-dbus_daemondir=/usr/lib"
${THOME}/build/genpkg TRIBlib-desktop-at-spi2 at-spi2-core-2.24.1
