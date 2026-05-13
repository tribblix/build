#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# note that the jsonrpclib on PyPi is old and incompatible
# with python3
#
${THOME}/build/pkg_pep518 -N TRIBjsonrpclib-python-313 jsonrpclib-0.4.2
