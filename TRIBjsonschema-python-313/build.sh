#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is an *old* build of jsonschema
#
# the *new* build is TRIBjsonschema4-python-313, but that has a lot
# more dependencies not all of which exist on sparc
#
# so this jsonschema is left for sparc and pkg5 to use, while the new one
# is what current application stacks should use
#
${THOME}/build/pkg_pep518 -N TRIBjsonschema-python-313 jsonschema-2.6.0
