#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# enabling GraphicsMagick leads to a SEGV with libjpeg-turbo 2 or later
# our librsvg is too old
#
# sparc needs -DWITH_POPPLER=OFF as gcc7 is too old
#
# to see the rather spiffy sixel output, use 'mlterm or 'xterm -ti vt340'
#
${THOME}/build/cmbuild -64only timg-1.6.0 -C "-DWITH_RSVG=OFF -DWITH_GRAPHICSMAGICK=OFF"
${THOME}/build/genpkg TRIBtimg timg-1.6.0
