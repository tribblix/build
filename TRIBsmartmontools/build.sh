#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# a preconf switch puts the manual pages in the right place for IPD4
#
${THOME}/build/dobuild -64only smartmontools-7.4 -C --sysconfdir=/etc
${THOME}/build/genpkg TRIBsmartmontools smartmontools-7.4
