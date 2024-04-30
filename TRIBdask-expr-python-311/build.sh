#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# This is built and packaged separately from the main dask package, as
# it expands the dependency tree, and not all dependencies are (yet)
# available on sparc
#
# it's version-locked to dask, so this and the main dask package
# need to be updated together
#
${THOME}/build/pkg_pep518 TRIBdask-expr-python-311 dask_expr-1.0.13
