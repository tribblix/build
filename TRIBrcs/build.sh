#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +gnu -64only rcs-5.10.1
${THOME}/build/genpkg TRIBrcs rcs-5.10.1
