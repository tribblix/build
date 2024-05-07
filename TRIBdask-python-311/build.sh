#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# dask and distributed are locked together version-wise so package
# them together
#
# the dependency list is thus for the combination of modules
#
# dask-expr is also locked to a specific version of dask, so update that
# if this package is updated
#
# there's a distributed patch necessary to handle RLIMIT
#
${THOME}/build/pkg_pep518 TRIBdask-python-311 dask-2024.5.0 distributed-2024.5.0
