#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only constype-1.0.6
${THOME}/build/genpkg TRIBdiagnostic-constype constype-1.0.6
