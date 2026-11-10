#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# not available on sparc due to pydantic dependency, ok as there
# are no consumers on sparc
#
${THOME}/build/pkg_pep518 -N TRIBtyper-python-313 typer-0.29.0
