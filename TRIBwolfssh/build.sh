#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# experimental build
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -A -64only wolfssh-1.4.18-stable -C "--enable-sshclient"
${THOME}/build/genpkg TRIBwolfssh wolfssh-1.4.18-stable
