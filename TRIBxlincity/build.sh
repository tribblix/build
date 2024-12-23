#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-fcommon ${THOME}/build/dobuild -64only lincity-1.13.1
${THOME}/build/genpkg TRIBxlincity lincity-1.13.1
