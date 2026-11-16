#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only xmag-1.0.9
${THOME}/build/genpkg TRIBx11-xmag xmag-1.0.9
