#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64 webp-pixbuf-loader-0.2.7
${THOME}/build/genpkg TRIBwebp-pixbuf webp-pixbuf-loader-0.2.7
