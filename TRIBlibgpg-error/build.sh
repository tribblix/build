#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_LDFLAGS="-lsocket -lnsl" ${THOME}/build/dobuild +64 libgpg-error-1.58
${THOME}/build/genpkg TRIBlibgpg-error libgpg-error-1.58
