#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we add an explicit dependency on tinycss2 to satisfy the declared
# dependency on bleach[css]
#
${THOME}/build/pkg_pep518 -N TRIBnbconvert-python-312 nbconvert-7.17.0
