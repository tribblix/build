#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# despite the name, the actual openssl bindings are in the
# cryptography module, not this one
#
${THOME}/build/pkg_pep518 -N TRIBpyopenssl-313 pyopenssl-26.1.0
