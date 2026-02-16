#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# download from https://dist.torproject.org/
#
# uses the same trick as memcached to build a static libevent
#
${THOME}/build/dobuild -64only tor-0.4.8.22 -C "--enable-static-libevent --with-libevent-dir=/tmp/mc --sysconfdir=/etc --localstatedir=/var --disable-dependency-tracking"
${THOME}/build/genpkg TRIBtor tor-0.4.8.22
rm -fr /tmp/mc
