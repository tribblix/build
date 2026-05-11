#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a sacrificial static libevent built by the preconf script
#
# pandoc is needed for the man pages; if it's not present then the build
# fails, although a working package will still be generated
#
env TRIBBLIX_PKG_CONFIG_PATH=/tmp/mc/lib/pkgconfig ${THOME}/build/dobuild -64only pgbouncer-1.25.2
${THOME}/build/genpkg TRIBpgbouncer pgbouncer-1.25.2
rm -fr /tmp/mc
