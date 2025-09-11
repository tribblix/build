#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# In illuminate itself:
./build tribblix-package
#
#  *** make sure the pkg version matches that here ***
#
# then copy the package into our own format
#
mkdir -p /tmp/pct
mv /tmp/TRIBilluminate.pkg /tmp/pct/TRIBilluminate.1.2.pkg
${THOME}/build/pkg2zap /tmp/pct/TRIBilluminate.1.2.pkg /tmp/pct
