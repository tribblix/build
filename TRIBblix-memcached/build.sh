#!/bin/sh
#
# Hack! temporary static copy of libevent placed in /tmp/mc
#
${THOME}/build/dobuild memcached-1.4.29 -P /opt/tribblix/memcached -C --with-libevent=/tmp/mc
${THOME}/build/genpkg TRIBblix-memcached memcached-1.4.29
rm -fr /tmp/mc
