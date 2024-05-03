#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 opus-1.5.2 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBopus opus-1.5.2
