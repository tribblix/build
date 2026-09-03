#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# pipdeptree depends on nab-index and nab-project
# nab-project depends on nab-index nab-resolver nab-provider
# nab-project and nab-provider depend on nab-markersets
# to simplify matters, create a merged nab package
# the pyproject_hooks dependency is provided by the build package
#
${THOME}/build/pkg_pep518 -N TRIBnab-python-313 nab_project-0.0.16 nab_index-0.0.16 nab_provider-0.0.16 nab_resolver-0.0.16 nab_markersets-0.0.16
