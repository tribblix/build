#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only scrot-0.10.0
${THOME}/build/genpkg TRIBscrot scrot-0.10.0
