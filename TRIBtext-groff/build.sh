#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64only -gnu groff-1.24.2 -P /usr/gnu -C "--with-doc=no --with-appdefdir=/usr/share/X11/app-defaults"
${THOME}/build/genpkg TRIBtext-groff groff-1.24.2
