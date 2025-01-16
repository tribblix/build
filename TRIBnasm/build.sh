#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# to run the test, cd into the source and
# gmake golden test
#
${THOME}/build/dobuild -64only nasm-2.16.03
${THOME}/build/genpkg TRIBnasm nasm-2.16.03
