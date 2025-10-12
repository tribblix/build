#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this package and brand are based on the bhyve brand
#
mkdir tmp1
cd tmp1
${THOME}/build/genpkg TRIBemu-brand
cd ..
rmdir tmp1
