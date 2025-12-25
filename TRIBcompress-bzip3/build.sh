#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# uses clang if available
#
${THOME}/build/dobuild -64only bzip3-1.4.0 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBcompress-bzip3 bzip3-1.4.0
