#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only ugrep-7.3.0 -C "--enable-sse2 --disable-avx"
${THOME}/build/genpkg TRIBugrep ugrep-7.3.0
