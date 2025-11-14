#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# pip-audit requires CacheControl[filecache] which adds filelock
# as a dependency
#
# sparc downrev due to unhelpful uv-build build requirement
#
${THOME}/build/pkg_pep518 -N TRIBcachecontrol-python-312 cachecontrol-0.14.4
