#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a patch to disable pie and fix headers
#
${THOME}/build/dobuild -64only aide-0.19.2
${THOME}/build/genpkg TRIBaide aide-0.19.2
