#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only mkcomposecache-1.2.3
${THOME}/build/genpkg TRIBx11-mkcomposecache mkcomposecache-1.2.3
