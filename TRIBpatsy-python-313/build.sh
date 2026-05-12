#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# consumer is statsmodels which requires scipy
# hence this not available on sparc
#
${THOME}/build/pkg_pep518 -N TRIBpatsy-python-313 patsy-1.0.2
