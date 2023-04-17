#!/bin/sh
#
# mkdocs-material and mkdocs-material-extensions have a circular dependency,
# so package them together
#

${THOME}/build/pkg_pep518 TRIBmkdocs-material-python-311 mkdocs_material-8.5.7 mkdocs_material_extensions-1.1.1
