#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# dask and distributed are locked together version-wise so package
# them together
#
# the dependency list is thus for the combination of modules
#
# we would like dask-expr, but it requires pyarrow dataset support
#
# there's a distributed patch necessary to handle RLIMIT
#
${THOME}/build/pkg_pep518 TRIBdask-python-311 dask-2024.4.2 distributed-2024.4.2
