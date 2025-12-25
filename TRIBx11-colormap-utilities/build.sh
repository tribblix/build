#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this was inherited as a merge of several utilities
#
# we no longer ship the old xcolor, cmap_alloc, or cmap_compact
#
${THOME}/build/dobuild -64only xstdcmap-1.0.5
${THOME}/build/genpkg TRIBx11-colormap-utilities xstdcmap-1.0.5
