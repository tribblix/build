#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# no releases for a while, so use a github checkout
#
env TRIBBLIX_CFLAGS="-D_XPG4_2 -D__EXTENSIONS__" ${THOME}/build/dobuild -64only https://github.com/HewlettPackard/netperf
${THOME}/build/genpkg TRIBnetperf netperf
