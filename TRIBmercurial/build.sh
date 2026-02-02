#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# in the new scheme, we build hg as a normal python module, so that
# it shows up in the list of modules and can be used directly by
# other python modules
#
$THOME/build/pkg_pep518 -N -v 312 TRIBmercurial mercurial-7.2
