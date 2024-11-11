#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# package both libansilove and ansilove together
# first time through, just package libansilove
#
${THOME}/build/cmbuild -64only libansilove-1.4.1
${THOME}/build/cmbuild -64only ansilove-4.2.0
${THOME}/build/genpkg TRIBansilove libansilove-1.4.1 ansilove-4.2.0
