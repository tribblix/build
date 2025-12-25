#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only joe-4.6
${THOME}/build/genpkg TRIBjoe joe-4.6
