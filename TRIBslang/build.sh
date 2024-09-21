#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only slang-pre2.3.4-14 -J 1 -C --without-onig
${THOME}/build/genpkg TRIBslang slang-pre2.3.4-14
