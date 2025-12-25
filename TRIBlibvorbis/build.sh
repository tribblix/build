#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# (needs ogg)
#
${THOME}/build/dobuild -64 libvorbis-1.3.7
${THOME}/build/genpkg TRIBlibvorbis libvorbis-1.3.7
