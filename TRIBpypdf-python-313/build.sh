#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# dependencies cover the [brotli,crypto,fonts,image] extras
# not crypto on sparc as pypdf 7 requires a newer cryptography module
#
${THOME}/build/pkg_pep518 -N TRIBpypdf-python-313 pypdf-7.2.0
