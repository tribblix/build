#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CPPFLAGS="-D_XPG4_2 -D__EXTENSIONS__" ${THOME}/build/dobuild -64only fping-5.5 -C --enable-ipv6
${THOME}/build/genpkg TRIBfping fping-5.5
