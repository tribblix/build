#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -n htmldoc-1.9.20 htmldoc-1.9.20-source
${THOME}/build/genpkg TRIBhtmldoc htmldoc-1.9.20-source
