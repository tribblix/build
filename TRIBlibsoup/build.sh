#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# later versions add additional dependencies
#
# glib-networking is a dependency, but indirectly via gio
# so isn't properly detected by autodepend
#
${THOME}/build/dobuild -gnu -64only libsoup-2.62.3 -C "--without-gnome --disable-more-warnings --disable-introspection --without-krb5-config"
${THOME}/build/genpkg TRIBlibsoup libsoup-2.62.3
