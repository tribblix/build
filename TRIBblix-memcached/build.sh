#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Hack! temporary static copy of libevent placed in /tmp/mc
# Remember to update the preconf file and have a copy of libevent-2.1.12-stable
#
${THOME}/build/dobuild -64only memcached-1.6.33 -P /opt/tribblix/memcached -C --with-libevent=/tmp/mc
${THOME}/build/genpkg TRIBblix-memcached memcached-1.6.33
rm -fr /tmp/mc
