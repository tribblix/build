#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs python in the path to find rst2man to generate man pages
#
env AR=/usr/bin/ar PATH=${PATH}:/usr/versions/python-3.12/bin ${THOME}/build/mesonbuild -64 -gnu gdk-pixbuf-2.42.12 -C '-Dothers=enabled -Dtests=false -Dinstalled_tests=false -Dintrospection=disabled'
${THOME}/build/genpkg TRIBgdk-pixbuf gdk-pixbuf-2.42.12
