#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the tarball is misnamed
#
${THOME}/build/dobuild -64only -n xorriso-1.5.6 xorriso-1.5.6.pl02
${THOME}/build/genpkg TRIBxorriso xorriso-1.5.6.pl02
