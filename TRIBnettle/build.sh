#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only nettle-3.10.2 -C --disable-static
${THOME}/build/genpkg TRIBnettle nettle-3.10.2
