#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# webp
#
${THOME}/build/dobuild -64 libwebp-1.4.0
${THOME}/build/genpkg TRIBlibwebp libwebp-1.4.0
