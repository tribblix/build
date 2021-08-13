#!/bin/sh
#
# there's a sacrificial static libevent built by the preconf script
#
env PKG_CONFIG_PATH=/tmp/mc/lib/pkgconfig:/usr/lib/pkgconfig ${THOME}/build/dobuild pgbouncer-1.16.0
${THOME}/build/genpkg TRIBpgbouncer pgbouncer-1.16.0
rm -fr /tmp/mc
