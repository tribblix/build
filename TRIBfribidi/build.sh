#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 fribidi-1.0.12 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBfribidi fribidi-1.0.12
