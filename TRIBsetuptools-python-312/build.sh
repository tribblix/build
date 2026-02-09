#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# as of python 3.12, packaged separately rather than bundled
# with python
#
# contains filenames with spaces, so we ship those as a tarball
# and unpack that in postinstall, like we used to do for python
# itself in prior releases
#
${THOME}/build/pkg_pep518 -N TRIBsetuptools-python-312 setuptools-82.0.0
