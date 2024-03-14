#!/bin/sh
#
# newer versions need newer glib2
#
${THOME}/build/mesonbuild -64 -gnu at-spi2-core-2.40.3 -C "-Dintrospection=no -Ddbus_daemon=/usr/lib/dbus-daemon"
${THOME}/build/genpkg TRIBlib-desktop-at-spi2 at-spi2-core-2.40.3
