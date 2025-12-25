#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env LIBS="-lm -lsocket" ${THOME}/build/dobuild -64only gqview-2.0.4
${THOME}/build/genpkg TRIBgqview gqview-2.0.4
