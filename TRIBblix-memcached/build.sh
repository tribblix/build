#!/bin/sh
#
# Hack! temporary static copy of libevent placed in /tmp/mc
# Remember to update the preconf file and have a copy of libevent-2.0.22-stable
#
${THOME}/build/dobuild memcached-1.4.31 -P /opt/tribblix/memcached -C --with-libevent=/tmp/mc
${THOME}/build/genpkg TRIBblix-memcached memcached-1.4.31
rm -fr /tmp/mc
