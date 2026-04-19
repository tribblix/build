#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only listres-1.0.7
${THOME}/build/genpkg TRIBx11-listres listres-1.0.7
