#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# declared dependencies cover direct and the [codecs] and [plot] extras
# the scikit-image overlay includes the [all] extra
#
${THOME}/build/pkg_pep518 -N TRIBtifffile-python-312 tifffile-2026.2.20
