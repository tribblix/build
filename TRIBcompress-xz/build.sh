#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 xz-5.4.5 -C --disable-staic
${THOME}/build/genpkg TRIBcompress-xz xz-5.4.5
