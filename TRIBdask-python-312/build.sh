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
${THOME}/build/pkg_pep518 -N TRIBdask-python-312 dask-2024.8.2 distributed-2024.8.2
