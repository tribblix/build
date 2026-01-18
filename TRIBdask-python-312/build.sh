#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# dask and distributed are locked together version-wise so package
# them together
#
# the dependency list is thus for the combination of modules
#
# as of 2025.1.0 dask-expr is no more, the dataframe extra of dask replaces it
# so the dask overlay (on x86, anyway) has the additional packages for the
# appropriate dask extras
# [complete] = [array,dataframe,diagnostics,distributed] + pyarrow + lz4
# [array] = numpy (pulled in via pandas in [dataframe])
# [dataframe] = [array] + pandas + pyarrow
# [distributed] = distributed
# [diagnostics] = bokeh + jinja2 (jinja2 pulled in via distributed)
#
# there's a distributed patch necessary to handle RLIMIT
#
${THOME}/build/pkg_pep518 -N TRIBdask-python-312 dask-2026.1.1 distributed-2026.1.1
