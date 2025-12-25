#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# openslp largely duplicates what we have in tree, and as shipped by
# the TRIBsvc-net-slp package, so this package only ships the slptool
# binary. In future it's conceivable that the whole of illumos slp
# could be replaced by openslp, but for the time being this package
# simply supplies slptool, which illumos doesn't
#
# the fixit script simply deletes the conflicting pieces
#
# for this to work, however, it needs to use the openslp library
# and not the one shipped with the OS, hence the --disable-shared
# which makes slptool be linked statically with the openslp routines
#
${THOME}/build/dobuild -64only openslp-2.0.0 -C "--disable-shared --sysconfdir=/etc --localstatedir=/var"
${THOME}/build/genpkg TRIBslptool openslp-2.0.0
