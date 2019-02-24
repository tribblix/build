#!/bin/sh
#
# this was inherited as a merge of several utilities
#
# we no longer ship the old xcolor, cmap_alloc, or cmap_compact
#
${THOME}/build/dobuild xstdcmap-1.0.4
${THOME}/build/genpkg TRIBx11-colormap-utilities xstdcmap-1.0.4
