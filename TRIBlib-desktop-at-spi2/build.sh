#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64 -gnu at-spi2-core-2.42.1 -C "-Dintrospection=no -Ddbus_daemon=/usr/lib/dbus-daemon"
${THOME}/build/genpkg TRIBlib-desktop-at-spi2 at-spi2-core-2.42.1
