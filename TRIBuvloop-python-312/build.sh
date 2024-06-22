#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# unfortunately, SO_REUSUEPORT appears insufficiently guarded
# there's a patch and preconf to do that correctly
# https://github.com/MagicStack/uvloop/issues/550
#
${THOME}/build/pkg_pep518 TRIBuvloop-python-312 uvloop-0.19.0
