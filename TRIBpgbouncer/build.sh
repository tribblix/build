#!/bin/sh
#
# there's a sacrificial static libevent built by the preconf script
#
env TRIBBLIX_PKG_CONFIG_PATH=/tmp/mc/lib/pkgconfig ${THOME}/build/dobuild -64only pgbouncer-1.18.0
${THOME}/build/genpkg TRIBpgbouncer pgbouncer-1.18.0
rm -fr /tmp/mc
