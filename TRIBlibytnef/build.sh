#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only ytnef-2.1.2
${THOME}/build/genpkg TRIBlibytnef ytnef-2.1.2
