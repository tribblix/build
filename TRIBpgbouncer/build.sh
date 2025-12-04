#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a sacrificial static libevent built by the preconf script
#
env TRIBBLIX_PKG_CONFIG_PATH=/tmp/mc/lib/pkgconfig ${THOME}/build/dobuild -64only pgbouncer-1.25.1
${THOME}/build/genpkg TRIBpgbouncer pgbouncer-1.25.1
rm -fr /tmp/mc
