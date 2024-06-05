#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# There's a patch to get configure to be consistent with the way
# we call it
#
$THOME/build/dobuild -64only matwm2-0.1.2 -C "--cc=gcc --mandir=/usr/share/man"
${THOME}/build/genpkg TRIBmatwm2 matwm2-0.1.2
