#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# There's a patch so that CC defaults to gcc rather than cc
#
${THOME}/build/dobuild -64only make-4.4.1 -P /usr/gnu
${THOME}/build/genpkg TRIBdev-build-gnu-make make-4.4.1
