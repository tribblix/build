#!/bin/sh
#
# mkdocs-material and mkdocs-material-extensions have a circular dependency,
# so package them together
#

${THOME}/build/pkg_pep518 TRIBmkdocs-material-python-311 mkdocs_material-9.5.12 mkdocs_material_extensions-1.3.1
