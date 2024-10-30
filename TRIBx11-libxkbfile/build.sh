#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we patch the SONAME, and do so for both autotools and meson
#
${THOME}/build/mesonbuild -64only libxkbfile-1.1.3
${THOME}/build/genpkg TRIBx11-libxkbfile libxkbfile-1.1.3
