#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs libgd
#
# need to rename the downloaded tarball
#  mv webalizer-2.23-08-src.tar.bz2 webalizer-2.23-08.tar.bz2
#
$THOME/build/dobuild -64only webalizer-2.23-08
${THOME}/build/genpkg TRIBwebalizer webalizer-2.23-08
