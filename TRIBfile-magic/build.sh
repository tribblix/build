#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# remember to bump the version in fixit
# if the version gets updated, rebuild TRIBmog to match
#
${THOME}/build/dobuild -64only file-5.47 -C --disable-lzlib
${THOME}/build/genpkg TRIBfile-magic file-5.47
