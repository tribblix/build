#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we add simplegeneric as a private dependency
# note that simplegeneric permissions need fixing, see the fixit file
#
${THOME}/build/pkg_setup_py TRIBwsme-python-312 WSME-0.12.1 simplegeneric-0.8.1
