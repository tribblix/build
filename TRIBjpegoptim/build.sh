#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/dobuild -64only jpegoptim-1.5.6
${THOME}/build/genpkg TRIBjpegoptim jpegoptim-1.5.6
