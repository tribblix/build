#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# logically yarn depends on node, but could use any version,
# so we don't declare a dependency
#
${THOME}/build/pkg_tarball TRIBv-yarn yarn-v1.22.19
