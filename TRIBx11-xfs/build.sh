#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xfs-1.2.2 -E /etc
${THOME}/build/genpkg TRIBx11-xfs xfs-1.2.2
