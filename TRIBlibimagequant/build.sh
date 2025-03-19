#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# later versions (4.x) are rust-based, stay with the 2.x branch
# for wider portability
#
# it's not an autoconf configure, but it understands the arguments that
# dobuild uses well enough
#
${THOME}/build/dobuild -64only libimagequant-2.18.0
${THOME}/build/genpkg -gnu TRIBlibimagequant libimagequant-2.18.0
