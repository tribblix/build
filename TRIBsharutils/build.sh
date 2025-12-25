#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-fcommon ${THOME}/build/dobuild -64only sharutils-4.15.2 -C --disable-uucode
${THOME}/build/genpkg TRIBsharutils sharutils-4.15.2
