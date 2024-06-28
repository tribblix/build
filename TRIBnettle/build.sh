#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 nettle-3.10 -C --disable-static
${THOME}/build/genpkg TRIBnettle nettle-3.10
