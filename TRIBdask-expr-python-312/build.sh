#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# This is built and packaged separately from the main dask package, as
# it expands the dependency tree, and not all dependencies are (yet)
# available on sparc
#
# it's version-locked to dask, so this will need updating if the main
# dask package is
#
${THOME}/build/pkg_pep518 -N TRIBdask-expr-python-312 dask_expr-1.1.19
