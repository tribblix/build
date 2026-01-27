#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we patch the SONAME
#
${THOME}/build/mesonbuild -64only libxkbfile-1.2.0
${THOME}/build/genpkg TRIBx11-libxkbfile libxkbfile-1.2.0
