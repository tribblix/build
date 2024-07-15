#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# wants the freedesktop sound them TRIBfreedesktop-sound-theme
# not listed as a hard dependency here, but pulled in via the mate overlay
#
${THOME}/build/dobuild -64only +gnu mate-media-1.28.1 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBmate-media mate-media-1.28.1
