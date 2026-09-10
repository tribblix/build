#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# pipdeptree depends on nab nab-index nab-project
# nab depends on nab-{index,markerset,project,provider,resolver}
# nab-index depends on nab-provider
# nab-project depends on nab-index nab-resolver nab-provider nab-markersets
# nab-provider depends on nab-markersets nab-resolver
# to simplify matters, create a merged nab package
# the pyproject_hooks dependency is provided by the build package
#
${THOME}/build/pkg_pep518 -N TRIBnab-python-313 nab-0.0.17 nab_project-0.0.17 nab_index-0.0.17 nab_provider-0.0.17 nab_resolver-0.0.17 nab_markersets-0.0.17
