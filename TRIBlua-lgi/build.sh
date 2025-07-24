#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CC="gcc -m64" PKG_CONFIG_PATH=/usr/lib/`${THOME}/build/getarch`/pkgconfig ${THOME}/build/dobuild +64 lgi-0.9.2
${THOME}/build/genpkg TRIBlua-lgi lgi-0.9.2
