#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +gnu -64only mate-control-center-1.26.1
${THOME}/build/genpkg TRIBmate-control-center mate-control-center-1.26.1
