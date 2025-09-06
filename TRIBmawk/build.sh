#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only mawk-1.3.4-20250131
${THOME}/build/genpkg TRIBmawk mawk-1.3.4-20250131
