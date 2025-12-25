#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# A dependency for newer inkscape
# Specify gcc, it will pick clang on its own
#
${THOME}/build/dobuild -64only potrace-1.16 -C "CC=gcc --with-libpotrace"
${THOME}/build/genpkg TRIBpotrace potrace-1.16
