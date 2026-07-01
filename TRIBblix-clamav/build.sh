#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# clamav
#
# there's a preconf to disable clamdtop, which needs curses but can't find it
#
# there's a preconf and postconf to fix up linker map files
#
# disable tests and milter as they don't build
#
# there are strange failures in rust - just delete the .so it complains about
# and rerun gmake
#
${THOME}/build/cmbuild +gnu -64only clamav-1.4.5 -P /opt/tribblix/clamav -C "-DENABLE_MILTER=OFF -DENABLE_TESTS=OFF"
${THOME}/build/genpkg TRIBblix-clamav clamav-1.4.5
