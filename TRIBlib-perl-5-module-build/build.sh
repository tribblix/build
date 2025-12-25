#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/unpack Module-Build-0.4234
cd Module-Build-0.4234
perl Build.PL
./Build
./Build install --destdir /tmp/hoa
${THOME}/build/create_pkg TRIBlib-perl-5-module-build /tmp/hoa
cd ..
