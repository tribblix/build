#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a preconf patch to get the 32/64 logic right
#
# no accelerated code on sparc, so don't bother there
#
${THOME}/build/mesonbuild -64 orc-0.4.44
${THOME}/build/genpkg TRIBorc orc-0.4.44
