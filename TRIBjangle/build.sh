#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# In jangle itself:
#
./build packages deps
#
#  *** make sure the pkg version matches that here ***
#
# then copy the package into our own format
#
mkdir -p /tmp/pct
mv /tmp/TRIBjangle.pkg /tmp/pct/TRIBjangle.0.19.pkg
${THOME}/build/pkg2zap /tmp/pct/TRIBjangle.0.19.pkg /tmp/pct
