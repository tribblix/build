#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# it's not happy about the signature of the system tputs()
#
# there's also a postconf file that's essential for 691-704
#
env TRIBBLIX_CFLAGS="-Wno-incompatible-pointer-types" ${THOME}/build/dobuild -64only less-704
${THOME}/build/genpkg TRIBtext-less less-704
