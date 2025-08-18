#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is carbon, the metric processing part of Graphite
#
# note that it installs to /opt/graphite by default, there's a preconf
# script that moves that to /opt/tribblix/graphite
#
# note also that we use the latest source, as the versions on PyPI
# are very old, the g0 in the package version reflects that
#
${THOME}/build/pkg_setup_py TRIBcarbon-python-312 https://github.com/graphite-project/carbon
