#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild +64 libva-2.22.0
${THOME}/build/genpkg TRIBlibva libva-2.22.0
