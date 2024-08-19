#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# on sparc, Xsun is shipped in the SUNWopenxsun-server package
# this package supplies the missing files, some of which were
# missing entirely and some of which were in other obsoleted
# packages
#
# all the work done by the fixit script, files are in ../patches/openXsun
#
${THOME}/build/genpkg TRIBopenxsun-compat
