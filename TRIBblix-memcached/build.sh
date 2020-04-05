#!/bin/sh
#
# Hack! temporary static copy of libevent placed in /tmp/mc
# Remember to update the preconf file and have a copy of libevent-2.0.22-stable
#
env TRIBBLIX_CFLAGS=-D_FILE_OFFSET_BITS=64 ${THOME}/build/dobuild memcached-1.6.3 -P /opt/tribblix/memcached -C --with-libevent=/tmp/mc
${THOME}/build/genpkg TRIBblix-memcached memcached-1.6.3
rm -fr /tmp/mc
