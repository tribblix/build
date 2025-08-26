#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# ship these 3 together to avoid exploding the number of packages
# hpack and hyperframe are used by h2, and all come from the same
# main project
#
${THOME}/build/pkg_pep518 -N TRIBh2-python-312 hpack-4.1.0 hyperframe-6.1.0 h2-4.3.0
