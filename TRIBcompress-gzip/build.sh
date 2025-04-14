#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -gnu -64only gzip-1.14
${THOME}/build/genpkg TRIBcompress-gzip gzip-1.14
