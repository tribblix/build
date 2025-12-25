#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only exif-0.6.22
${THOME}/build/genpkg TRIBexif exif-0.6.22
