#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# requires lzo
#
${THOME}/build/dobuild -64only lzop-1.04
${THOME}/build/genpkg TRIBcompress-lzop lzop-1.04
