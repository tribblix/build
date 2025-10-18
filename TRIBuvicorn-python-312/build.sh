#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# dependencies are not only the basic but also all of [standard]
# except on sparc, which misses watchfiles which depends on rust
#
${THOME}/build/pkg_pep518 -N TRIBuvicorn-python-312 uvicorn-0.38.0
