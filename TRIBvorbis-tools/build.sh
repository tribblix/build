#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only vorbis-tools-1.4.3
${THOME}/build/genpkg TRIBvorbis-tools vorbis-tools-1.4.3
