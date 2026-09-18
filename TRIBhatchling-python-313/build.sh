#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 1.32.3 breaks builds, eg virtualenv
# https://github.com/pypa/hatch/issues/2437
#
${THOME}/build/pkg_pep518 TRIBhatchling-python-313 hatchling-1.32.0 hatch_fancy_pypi_readme-25.1.0
