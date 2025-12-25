#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# lzo library - also see lzop
#
${THOME}/build/dobuild -64only lzo-2.10 -C "--enable-shared --disable-static"
${THOME}/build/genpkg TRIBcompress-lzo lzo-2.10
