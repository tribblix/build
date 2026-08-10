#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# pipdeptree depends on nab-index and nab-python
# nab-python depends on nab-index and nab-resolver
# to simplify matters, create a merged nab package
# the pyproject_hooks dependency is provided by the build package
#
${THOME}/build/pkg_pep518 -N TRIBnab-python-313 nab_index-0.0.12 nab_python-0.0.12 nab_resolver-0.0.12
