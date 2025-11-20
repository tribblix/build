#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# check the version is within the range permitted by fastapi before updating
#
${THOME}/build/pkg_pep518 -N TRIBstarlette-python-312 starlette-0.50.0
