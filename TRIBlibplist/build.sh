#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libplist-2.4.0 -C "--disable-static --disable-cython"
${THOME}/build/genpkg TRIBlibplist libplist-2.4.0
