#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only enchant-1.6.1 -C "--disable-aspell --with-myspell-dir=/usr/share/hunspell"
${THOME}/build/genpkg TRIBenchant enchant-1.6.1
