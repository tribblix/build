#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# experimental build
#
# note that wolfssl doesn't provide stable libraries, bumping SONAME, so
# this may need to be rebuilt if wolfssl is updated
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -A -64only wolfssh-1.6.0 -C "--enable-sshclient --disable-dependency-tracking"
${THOME}/build/genpkg TRIBwolfssh wolfssh-1.6.0
