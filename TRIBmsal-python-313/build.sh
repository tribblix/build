#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the PyJWT[crypto] dependency requires a newer version of cryptography
# than is available on sparc
#
# bundle the extensions here for convenience
#
${THOME}/build/pkg_pep518 -N TRIBmsal-python-313 msal-1.36.0 msal_extensions-1.3.1
