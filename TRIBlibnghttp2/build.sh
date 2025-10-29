#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# just the library
#
${THOME}/build/dobuild -64 nghttp2-1.68.0 -C --enable-lib-only
${THOME}/build/genpkg TRIBlibnghttp2 nghttp2-1.68.0
