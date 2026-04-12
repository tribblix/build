#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 xz-5.8.3 -C --disable-static
${THOME}/build/genpkg TRIBcompress-xz xz-5.8.3
