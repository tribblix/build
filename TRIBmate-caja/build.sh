#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs mate-desktop installing for the build
#
${THOME}/build/dobuild -64only -gnu caja-1.28.0 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-caja caja-1.28.0
