#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# in a pctlife checkout
#
./build package
#
#  *** make sure the pkg version matches that here ***
#
# then copy the package into our own format
#
mkdir -p /tmp/pct
mv /tmp/TRIBpctlife.pkg /tmp/pct/TRIBpctlife.1.8.0.pkg
${THOME}/build/pkg2zap /tmp/pct/TRIBpctlife.1.8.0.pkg /tmp/pct
