#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a patch to disable pie
#
${THOME}/build/dobuild -64only aide-0.18.8
${THOME}/build/genpkg TRIBaide aide-0.18.8
