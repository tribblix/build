#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs introspection so that gssdp can build with introspection enabled
#
$THOME/build/mesonbuild -64only libsoup-3.6.6 -C "-Dsysprof=disabled -Dpkcs11_tests=disabled"
${THOME}/build/genpkg TRIBlibsoup3 libsoup-3.6.6
