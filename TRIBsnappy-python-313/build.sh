#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# the new version is a wrapper round cramjam, but cramjam is written in rust
#
${THOME}/build/pkg_pep518 -N TRIBsnappy-python-313 python_snappy-0.7.3
