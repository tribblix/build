#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only djvulibre-3.5.29
${THOME}/build/genpkg TRIBdjvulibre djvulibre-3.5.29
