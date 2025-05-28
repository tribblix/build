#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# experimental build
#
# note that wolfssl doesn't provide stable libraries, bumping SONAME, so
# this may need to be rebuilt if wolfssl is updated
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -A -64only wolfssh-1.4.20 -C "--enable-sshclient"
${THOME}/build/genpkg TRIBwolfssh wolfssh-1.4.20
