#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only appres-1.0.7
${THOME}/build/genpkg TRIBx11-appres appres-1.0.7
