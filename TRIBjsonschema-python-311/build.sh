#!/bin/sh
#
# this is an *old* build of jsonschema
#
# the *new* build is TRIBjsonschema4-python-311, but that has a lot
# more dependencies not all of which exist on sparc
#
# so this jsonschema is left for sparc and pkg5 to use, while the new one
# is what current application stacks should use
#
${THOME}/build/pkg_setup_py TRIBjsonschema-python-311 jsonschema-2.6.0
