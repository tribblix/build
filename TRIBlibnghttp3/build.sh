#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 nghttp3-1.14.0
${THOME}/build/genpkg TRIBlibnghttp3 nghttp3-1.14.0
