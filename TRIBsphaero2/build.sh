#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# in the sphaero2 checkout
#
./build package
#
#  *** make sure the pkg version matches that here ***
#
# then copy the package into our own format
#
mkdir -p /tmp/pct
mv /tmp/TRIBsphaero2.pkg /tmp/pct/TRIBsphaero2.1.9.0.pkg
${THOME}/build/pkg2zap /tmp/pct/TRIBsphaero2.1.9.0.pkg /tmp/pct
