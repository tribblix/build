#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only uwm-0.2.11b
${THOME}/build/genpkg TRIBuwm uwm-0.2.11b
