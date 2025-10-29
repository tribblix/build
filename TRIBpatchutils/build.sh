#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only patchutils-0.4.4
${THOME}/build/genpkg TRIBpatchutils patchutils-0.4.4
