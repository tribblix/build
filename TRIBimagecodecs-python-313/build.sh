#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a patch for setup.py to disable lerc (we don't have), jpegxr
# (won't build) and add in brotli, bz2, gif, snappy
#
${THOME}/build/pkg_pep518 -N -q TRIBimagecodecs-python-313 imagecodecs-2026.5.10
