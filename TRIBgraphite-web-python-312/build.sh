#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is the web front end for Graphite
#
# note that it installs to /opt/graphite by default, there's a preconf
# script that moves that to /opt/tribblix/graphite
#
# note also that we use the latest source, as the versions on PyPI
# are very old, the g0 in the package version reflects that
#
${THOME}/build/pkg_setup_py TRIBgraphite-web-python-312 https://github.com/graphite-project/graphite-web
