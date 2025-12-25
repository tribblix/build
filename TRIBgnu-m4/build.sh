#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only m4-1.4.19 -P /usr/gnu
${THOME}/build/genpkg TRIBgnu-m4 m4-1.4.19
