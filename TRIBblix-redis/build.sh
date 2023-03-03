#!/bin/sh
#
# the redis build is implicitly 64-bit already
#
env CC=gcc BUILD_TLS=yes ${THOME}/build/dobuild redis-6.2.11 -P /opt/tribblix/redis
cd redis-6.2.11
# some of the tests might fail in tcl
gmake test CC=gcc BUILD_TLS=yes
rm -fr /tmp/rr
gmake install CC=gcc BUILD_TLS=yes PREFIX=/tmp/rr/opt/tribblix/redis
cp COPYING 00-RELEASENOTES /tmp/rr/opt/tribblix/redis
${THOME}/build/create_pkg TRIBblix-redis /tmp/rr
cd ..
rm -fr /tmp/rr
