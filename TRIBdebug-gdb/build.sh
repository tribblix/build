#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to build 32-bit with --disable-largefile because of procfs
# perl to find pod2man for the manual pages
#
${THOME}/build/dobuild gdb-8.3.1 -C --disable-largefile
mv gdb-8.3.1 gdb-8.3.1-32
${THOME}/build/dobuild +64 gdb-8.3.1
mv gdb-8.3.1-32 gdb-8.3.1
${THOME}/build/genpkg TRIBdebug-gdb gdb-8.3.1
