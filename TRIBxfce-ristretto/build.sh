#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -gnu -64only ristretto-0.14.0
${THOME}/build/genpkg TRIBxfce-ristretto ristretto-0.14.0
