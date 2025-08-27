#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# wine
#
${THOME}/build/dobuild -gnu wine-5.0.5 -C "--with-oss MSGFMT=/usr/gnu/bin/msgfmt" -M -k
${THOME}/build/genpkg -gnu TRIBwine wine-5.0.5
