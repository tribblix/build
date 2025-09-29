#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# mkdocs-material and mkdocs-material-extensions have a circular dependency,
# so package them together
#
${THOME}/build/pkg_pep518 TRIBmkdocs-material-python-312 mkdocs_material-9.6.20 mkdocs_material_extensions-1.3.1
