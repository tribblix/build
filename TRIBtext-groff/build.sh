#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a patch+preconf for 1.23.0 that fixes a regression, most obviously
# seen as 'aws help' being blank
#
${THOME}/build/dobuild +64only -gnu groff-1.23.0 -P /usr/gnu -C "--with-doc=no --with-appdefdir=/usr/share/X11/app-defaults"
${THOME}/build/genpkg TRIBtext-groff groff-1.23.0
