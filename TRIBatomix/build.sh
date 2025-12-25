#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-fcommon TRIBBLIX_LDFLAGS=-fcommon $THOME/build/mesonbuild +gnu -64only atomix-3.34.0
${THOME}/build/genpkg TRIBatomix atomix-3.34.0
