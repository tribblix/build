#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# webp
#
# explicitly disable GL, as it's accidentally picked up on sparc
# if we don't
#
${THOME}/build/dobuild -64 libwebp-1.4.0 -C --disable-gl
${THOME}/build/genpkg TRIBlibwebp libwebp-1.4.0
