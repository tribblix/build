#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# libspectre requires libgs provided by ghostscript
#
${THOME}/build/dobuild -64only libspectre-0.2.12
${THOME}/build/genpkg TRIBlibspectre libspectre-0.2.12
