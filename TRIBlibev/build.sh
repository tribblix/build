#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64 libev-4.33
${THOME}/build/genpkg TRIBlibev libev-4.33
