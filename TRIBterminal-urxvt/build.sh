#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# urxvt used to bundle libptytty, we now have to build it separately
# as a preconf script
#
env TRIBBLIX_PKG_CONFIG_PATH=/tmp/libptytty/lib/`${THOME}/build/getarch`/pkgconfig ${THOME}/build/dobuild -64only rxvt-unicode-9.31
${THOME}/build/genpkg TRIBterminal-urxvt rxvt-unicode-9.31
rm -fr /tmp/libptytty
