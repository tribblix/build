#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the valkey build is implicitly 64-bit already
#
# Valkey is the open fork of redis, which is no longer freely licensed
#
env CC=gcc BUILD_TLS=yes ${THOME}/build/dobuild valkey-7.2.11 -P /opt/tribblix/valkey
cd valkey-7.2.11
# some of the tests fail in tcl
gmake test CC=gcc BUILD_TLS=yes
rm -fr /tmp/rr
gmake install CC=gcc BUILD_TLS=yes PREFIX=/tmp/rr/opt/tribblix/valkey
cp COPYING 00-RELEASENOTES /tmp/rr/opt/tribblix/valkey
${THOME}/build/create_pkg TRIBblix-valkey /tmp/rr
cd ..
rm -fr /tmp/rr
