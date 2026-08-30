#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# consumer is statsmodels, although patsy is deprecated
# with formulaic as the recommended path forward
#
${THOME}/build/pkg_pep518 -N TRIBpatsy-python-313 patsy-1.0.3
