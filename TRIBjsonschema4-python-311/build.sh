#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is the *new* build of jsonschema
#
# the *old* build is TRIBjsonschema-python-311, which is left for sparc and
# pkg5 to use, while this new one is for current application stacks
#
# jupyter needs the [format-nongpl] extra, see depend.format-nongpl for
# the packages included in that
#
${THOME}/build/pkg_pep518 TRIBjsonschema4-python-311 jsonschema-4.23.0
