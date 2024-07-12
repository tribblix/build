#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# The graphviz extra is useful for graphical output, using the graphiviz
# module provided by the TRIBgraphviz-python-312 package
#
# That isn't declared as a dependency nor is it included in an overlay
# because it would pull in graphviz and most of the desktop stack which
# would not be what's wanted by default
#
${THOME}/build/pkg_pep518 TRIBpipdeptree-python-312 pipdeptree-2.23.1
