#!/bin/sh
#
# Update redis
#
env CC=gcc ${THOME}/build/dobuild redis-3.2.3 -P /opt/tribblix/redis
cd redis-3.2.3
gmake test
rm -fr /tmp/rr
gmake install PREFIX=/tmp/rr/opt/tribblix/redis
cp COPYING 00-RELEASENOTES /tmp/rr/opt/tribblix/redis
${THOME}/build/create_pkg TRIBblix-redis /tmp/rr
rm -fr /tmp/rr
