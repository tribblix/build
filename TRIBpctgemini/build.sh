#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# in a pctgemini checkout
#
./build package
#
#  *** make sure the pkg version matches that here ***
#
# then copy the package into our own format
#
mkdir -p /tmp/pct
mv /tmp/TRIBpctgemini.pkg /tmp/pct/TRIBpctgemini.1.0.0.pkg
${THOME}/build/pkg2zap /tmp/pct/TRIBpctgemini.1.0.0.pkg /tmp/pct
