#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we add simplegeneric as a private dependency
# note that simplegeneric permissions need fixing, see the fixit file
#
${THOME}/build/pkg_pep518 -N TRIBwsme-python-313 wsme-0.13.0 simplegeneric-0.8.1
