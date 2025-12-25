#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs ogg
#
${THOME}/build/dobuild -64 libtheora-1.1.1 -C --disable-examples
${THOME}/build/genpkg TRIBlibtheora libtheora-1.1.1
