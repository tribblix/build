#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# in jattack
#
./build package
#
#  *** make sure the pkg version matches that here ***
#
# then copy the package into our own format
#
mkdir -p /tmp/pct
mv /tmp/TRIBjattack.pkg /tmp/pct/TRIBjattack.1.7.0.pkg
${THOME}/build/pkg2zap /tmp/pct/TRIBjattack.1.7.0.pkg /tmp/pct
