#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# htop support for solaris/illumos is experimental
#
# Thanks to Guy M Broome <gmbroome@vcu.edu>
#
env TRIBBLIX_CFLAGS=-fcommon $THOME/build/dobuild +gnu -64only htop-2.2.0

${THOME}/build/genpkg TRIBhtop htop-2.2.0
