#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# specify JED_ROOT otherwise it will install stuff directly into /usr/jed
#
env JED_ROOT=/usr/share/jed ${THOME}/build/dobuild -64only jed-pre0.99.20-183
cd jed-pre0.99.20-183-64bit
gmake xjed
cd ..
${THOME}/build/genpkg TRIBjed jed-pre0.99.20-183
