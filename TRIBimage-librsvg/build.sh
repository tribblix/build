#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 2.42 requires a cairo update, so stick to 2.40
#
${THOME}/build/dobuild -64 librsvg-2.40.21 -C "--disable-Bsymbolic --disable-introspection --disable-dependency-tracking"
${THOME}/build/genpkg TRIBimage-librsvg librsvg-2.40.21
