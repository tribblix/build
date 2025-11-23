#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a patch for setup.py to disable lerc (we don't have), jpegxr
# (won't build) and tiff (too old) and add in brotli, bz2, gif, snappy
#
# downrev due to cython version dependency
#
${THOME}/build/pkg_setup_py TRIBimagecodecs-python-312 imagecodecs-2025.3.30
