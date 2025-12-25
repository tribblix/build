#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there is no pre-built tarsnap for illumos
# so we have to build from source
#
# patch configure so we don't get a broken RPATH
#
${THOME}/build/dobuild -64only tarsnap-autoconf-1.0.40 -C "--sysconfdir=/etc --localstatedir=/var"
${THOME}/build/genpkg TRIBtarsnap tarsnap-autoconf-1.0.40
