#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# a 64-bit build is slightly tricky as not everything picks up the
# flags, not everything should be relocated, and there's a fixit script
# to correct the remainder
#
env CC="gcc -m64" ${THOME}/build/dobuild +64only xcircuit-3.10.30
${THOME}/build/genpkg TRIBxcircuit xcircuit-3.10.30
