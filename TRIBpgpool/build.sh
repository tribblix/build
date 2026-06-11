#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs a patch and postconf
#
# specify LD_RUN_PATH so that pgproto also picks it up and can find
# libpq at runtime
#
env TRIBBLIX_CFLAGS="-D_XPG4_2 -D__EXTENSIONS__" LD_RUN_PATH=/opt/tribblix/postgres17/lib PATH=/opt/tribblix/postgres17/bin:$PATH ${THOME}/build/dobuild -64only pgpool-II-4.6.7 -C "--sysconfdir=/etc --with-openssl"
${THOME}/build/genpkg TRIBpgpool pgpool-II-4.6.7
