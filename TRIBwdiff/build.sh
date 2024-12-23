#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only wdiff-1.2.2
${THOME}/build/genpkg TRIBwdiff wdiff-1.2.2
