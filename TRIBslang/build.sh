#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# build from a recent snapshot
#
${THOME}/build/dobuild -64only slang-pre2.3.4-22 -J 1 -C "--without-onig --with-pcre2-8 --without-pcre"
${THOME}/build/genpkg TRIBslang slang-pre2.3.4-22
