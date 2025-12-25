#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS="-std=c99" ${THOME}/build/dobuild +64 npth-1.6
${THOME}/build/genpkg TRIBnpth npth-1.6
