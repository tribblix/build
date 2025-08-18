#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this is the *new* build of jsonschema
#
# the *old* build is TRIBjsonschema-python-312, which is left for sparc and
# pkg5 to use, while this new one is for current application stacks
#
# jupyter needs the [format-nongpl] extra, see depend.format-nongpl for
# the packages included in that
#
${THOME}/build/pkg_pep518 -N TRIBjsonschema4-python-312 jsonschema-4.25.1
