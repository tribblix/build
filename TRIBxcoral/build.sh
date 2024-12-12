#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need -J 1 otherwise word.h will be constructed after it's used
#
${THOME}/build/dobuild xcoral-4.02.6 -J 1
$THOME/build/genpkg TRIBxcoral xcoral-4.02.6
