#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64 libepoxy-1.5.10
${THOME}/build/genpkg TRIBx11-libepoxy libepoxy-1.5.10
