#!/bin/sh
#
# pip-audit requires CacheControl[filecache] which adds filelock
# as a dependency
#
${THOME}/build/pkg_pep518 TRIBcachecontrol-python-312 cachecontrol-0.14.0
